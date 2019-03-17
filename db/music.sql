CREATE TABLE notes(note_id SERIAL PRIMARY KEY,
	note_name VARCHAR(50) NOT NULL UNIQUE),
	img_source VARCHAR(100) NOT NULL UNIQUE,
	sound_source VARCHAR(100) UNIQUE);

--Just have this with the notes table??
CREATE TABLE note_answers(answer_id SERIAL PRIMARY KEY,
	answer_name VARCHAR(10) NOT NULL UNIQUE);



--SELECT * FROM song_info WHERE rating >= 4;

INSERT INTO notes (note_name) VALUES ('C');
INSERT INTO notes (note_name) VALUES ('C#/Db');
INSERT INTO notes (note_name) VALUES ('D');
INSERT INTO notes (note_name) VALUES ('D#/Eb');
INSERT INTO notes (note_name) VALUES ('E');
INSERT INTO notes (note_name) VALUES ('F');
INSERT INTO notes (note_name) VALUES ('F#/Gb');
INSERT INTO notes (note_name) VALUES ('G');
INSERT INTO notes (note_name) VALUES ('G#/Ab');
INSERT INTO notes (note_name) VALUES ('A');
INSERT INTO notes (note_name) VALUES ('A#/Bb');
INSERT INTO notes (note_name) VALUES ('B');



--Joining tables together
SELECT * FROM notes n
JOIN note_answers a ON n.note_id = a.answer_id
WHERE note_name = 'C';

-- Updating table info
-- UPDATE id SET name = 'updtaed info' WHERE id=3;

--Link tables together
SELECT * FROM notes n JOIN note_answers a ON n.note_name = answer_id; 
