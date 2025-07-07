CREATE TABLE cars (
    car_id INTEGER PRIMARY KEY,
    model TEXT NOT NULL
);

CREATE TABLE lecturers (
    lecturer_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    car_id INTEGER NOT NULL UNIQUE,  -- must be unique and not null
    FOREIGN KEY (car_id) REFERENCES cars(car_id)
);

INSERT INTO cars (car_id, model) VALUES
(1, 'honda'),
(2, 'mitsubishi'),
(3, 'ferrari'),
(4, 'ford');

INSERT INTO lecturers (lecturer_id, name, car_id) VALUES
(1, 'danny', 4),
(2, 'moshe', 1),
(3, 'ron', 2);

DELETE FROM cars
where car_id = 4;

