CREATE DATABASE petstore;

USE petstore;

CREATE TABLE owners (
  ownerId INT AUTO_INCREMENT PRIMARY KEY,
  firstName VARCHAR(20) NOT NULL,
  lastName VARCHAR(20) NOT NULL,
  email VARCHAR(30),
  phone VARCHAR(20),
  createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO owners (firstName, lastName, email, phone)
VALUES ('Sarah', 'Kuss', 'sarah.kuss33@gmail.com', '585-478-6002');

CREATE TABLE pets (
  petId INT AUTO_INCREMENT PRIMARY KEY,
  ownerId INT NOT NULL,
  petName VARCHAR(15) NOT NULL,
  animalType VARCHAR (20),
  dateBorn DATE
);

INSERT INTO pets(ownerId, petName, animalType, dateBorn)
VALUES (1, 'Dinner', 'Rabbit', '2017-06-01');