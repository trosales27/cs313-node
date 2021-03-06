function getRequest(url, callback) {
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
        var data = JSON.parse(this.responseText);
        //var data = JSON.parse(JSON.stringify(this.responseText));
        callback(data);
      } else if (this.readyState == 4) {
        var errorMessage = "Request failed:";
        errorMessage += " readyState=" + this.readyState + ",";
        errorMessage += " status=" + this.status;
        console.error(errorMessage);
      }
    };
    xhr.open("GET", url, true);
    xhr.send();
  }

  function getNotes() {
    console.log("Reqeust for getNotes");
    //set the id to pull random note.
    id = Math.floor((Math.random() * 10) + 5); //random number from 1-15, 1 for each note

    getRequest("/getNote?id=" + id, (data) => {
      //What to do with the json goes here
      const note_name = data.note_name;
      const img = data.img_source;
      const sound = data.sound_source;
      document.getElementById("img").src = img;

      //  This finally works!!!
      document.getElementById("audio").src = sound;
      let audioButton = "<button onclick='playAudio()'>Hear it!</button>";
      document.getElementById("audio").innerHTML = audioButton;

      // Random note/number generator
      let allNotes = ["A","B","C","D","E","F","G","Ab","A#","Gb","G#","Bb","F#","Eb","Db","D#","C#"];
      let notes = [];

      // Fill an array with 4 unique notes, one of which has to be the correct one.
      for (var i = 0; i < 4; i++) {
        //This will randomly put in the correct note into the array
        if ((notes.indexOf(note_name) == -1) && (notes.length == 3 || (Math.floor(Math.random() * 3) == 0))) { 
          notes[i] = note_name; 
        }
        else { 
          isGood = false;
          while (isGood == false) {
            var temp = get_rand(notes, allNotes, note_name); 
            if (!in_array(temp, notes)) { 
              isGood = true; 
              notes[i] = temp;
            }
          }
        }
      }

      // Fill out the form to be displayed on the front end
      let answers = "<form>";
      for (var i = 0; i < 4; i++) {
        answers += "<input type='radio' name='answer' id='answer" + i + "' value=" + notes[i] + ">" + notes[i] + "<br>";
      }
      //console.log(answers);
      answers += "<input type='hidden' name='correct_answer' id='correct_answer' value=" + note_name + ">";
      document.getElementById("answers").innerHTML = "<p>Answer here: </p><br>" + answers;
      
    });
  }

  // Pulls the audio source file and plays it when clicked
  function playAudio() {
    var sound = document.getElementById("audio").src;
    // console.log("Sound is: " + sound);
    var audio = new Audio(sound);
    audio.play();
  }

  // Gets a random number that is not the correct answer.
  function get_rand(notes, allNotes, note_name) {
    //random number within array size
    // Random Num formula: Math.floor(Math.random() * (max - min + 1)) + min;
    var randomNote = allNotes[Math.floor(Math.random() * 17)]; 

    //Check to make sure the random note is not the correct answer
    while (randomNote == note_name) { randomNote = allNotes[Math.floor(Math.random() * 18)]; }
    return randomNote;
  }

  // Checks to make sure the random number is unique to the array of notes
function in_array(temp, notes) {
  for (var i = 0; i < notes.length; i++) {
    if (temp == notes[i]) {
      return true;
    }
    return false;
  }
}

// Checks which answer was submitted and displays a correct/incorrect message
function checkAnswer() {
  console.log("Checking Answer!");

  let answer = "";
  if (document.getElementById("answer0").checked) { answer = document.getElementById("answer0").value; }
  if (document.getElementById("answer1").checked) { answer = document.getElementById("answer1").value; }
  if (document.getElementById("answer2").checked) { answer = document.getElementById("answer2").value; }
  if (document.getElementById("answer3").checked) { answer = document.getElementById("answer3").value; }
  const correct_answer = document.getElementById("correct_answer").value;
  console.log("Answer is: " + answer);
  console.log("Correct Ansert is: " + correct_answer);
  document.getElementById("answer0").disabled = true;
  document.getElementById("answer1").disabled = true;
  document.getElementById("answer2").disabled = true;
  document.getElementById("answer3").disabled = true;

  if (answer == correct_answer) {
    console.log("Correct!");
    document.getElementById("correct").style.visibility = "visible";
    
  }

  else {
    console.log("incorrect!");
    document.getElementById("incorrect").style.visibility = "visible";
  }

}

// Reloads the page with the next question
function nextQuestion() {
console.log("pull up the next question");
document.getElementById("correct").style.visibility= "hidden";
document.getElementById("incorrect").style.visibility= "hidden";
getNotes();
}

// Reloads the page with the next question
function nextChordQuestion() {
  console.log("pull up the next question");
  document.getElementById("correct").style.visibility= "hidden";
  document.getElementById("incorrect").style.visibility= "hidden";
  getChords();
  }





function getChords() {
  console.log("Reqeust for getNotes");
  //set the id to pull random note.
  id = Math.floor((Math.random() * 6)); //random number from 0-6, 1 for each chord

  getRequest("/getChord?id=" + id, (data) => {
    //What to do with the json goes here
    const chord_name = data.chord_name;
    const img = data.img_source;
    const sound = data.sound_source;
    document.getElementById("img").src = img;

    //  This finally works!!!
    document.getElementById("audio").src = sound;
    let audioButton = "<button onclick='playAudio()'>Hear it!</button>";
    document.getElementById("audio").innerHTML = audioButton;

    // Random note/number generator
    let allChords = ["C","Cmaj7","C7","Cmin7","Cdim","Cdim7"];
    let chords = [];

    // Fill an array with 4 unique chords one of which has to be the correct one.
    for (var i = 0; i < 4; i++) {
      //This will randomly put in the correct note into the array
      if ((chords.indexOf(chord_name) == -1) && (chords.length == 3 || (Math.floor(Math.random() * 3) == 0))) { 
        chords[i] = chord_name; 
      }
      else { 
        isGood = false;
        while (isGood == false) {
          var temp = get_rand_chords(chords, allChords, chord_name); 
          if (!in_array(temp, chords)) { 
            isGood = true; 
            chords[i] = temp;
          }
        }
      }
    }

    // Fill out the form to be displayed on the front end
    let answers = "<form>";
    for (var i = 0; i < 4; i++) {
      answers += "<input type='radio' name='answer' id='answer" + i + "' value=" + chords[i] + ">" + chords[i] + "<br>";
    }
    //console.log(answers);
    answers += "<input type='hidden' name='correct_answer' id='correct_answer' value=" + chord_name + ">";
    document.getElementById("answers").innerHTML = "<p>Answer here: </p><br>" + answers;
  });
}

function get_rand_chords(chords, allChords, chord_name) {
  //random number within array size
  // Random Num formula: Math.floor(Math.random() * (max - min + 1)) + min;
  var randomChord = allChords[Math.floor(Math.random() * 6)]; 

  //Check to make sure the random note is not the correct answer
  while (randomChord == chord_name) { randomChord = allChords[Math.floor(Math.random() * 6)]; }
  return randomChord;
}







// GOALS:
//        - Chords
//        - Populate other tabs (about,h home, etc.) - front end stuff
//        

// TODO - Check for each answer, have some little indication for right and wrong answers
//      -  Store each to display score after 5, havea button to retry and a button to go home
//      -   Stretch goal: store high score in a session variable and display next to total after each compelted quiz