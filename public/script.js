function getRequest(url, callback) {
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
        var data = JSON.parse(this.responseText);
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
    id = Math.floor((Math.random() * 10) + 5); //random number from 1-15 1 for each note

    getRequest("/getNote?id=" + id, (data) => {
      //What to do with the json goes here
      console.log(data);
      const note_name = data.note_name;
      const img = data.img_source;
      console.log(note_name);
      console.log(img);
      document.getElementById("img").innerHTML = "<p>img is: " + img + "</p>";
      document.getElementById("answers").innerHTML = "<p>Note name is: " + note_name + "</p>";

    });
  }
