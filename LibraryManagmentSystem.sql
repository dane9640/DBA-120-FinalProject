CREATE DATABASE LibraryManagementSystem;
USE LibraryManagementSystem;

CREATE TABLE Authors (
  Author_ID INT AUTO_INCREMENT PRIMARY KEY,
  FirstName VARCHAR(255) NOT NULL,
  LastName VARCHAR(255) NOT NULL,
  BirthYear INT,
  Nationality VARCHAR(255)
);

CREATE TABLE Genres (
  Genre_ID INT AUTO_INCREMENT PRIMARY KEY,
  Name VARCHAR(255) NOT NULL,
  Description TEXT
);

CREATE TABLE Books (
  Book_ID INT AUTO_INCREMENT PRIMARY KEY,
  Title VARCHAR(255) NOT NULL,
  Author_ID INT,
  Genre_ID INT,
  PublicationYear INT,
  FOREIGN KEY (Author_ID) REFERENCES Authors(Author_ID),
  FOREIGN KEY (Genre_ID) REFERENCES Genres(Genre_ID)
);

CREATE TABLE Members (
  Member_ID INT AUTO_INCREMENT PRIMARY KEY,
  FirstName VARCHAR(255) NOT NULL,
  LastName VARCHAR(255) NOT NULL,
  DateOfBirth DATE,
  Email VARCHAR(255),
  PhoneNumber VARCHAR(20)
);

CREATE TABLE Loans (
  Loan_ID INT AUTO_INCREMENT PRIMARY KEY,
  Book_ID INT,
  Member_ID INT,
  CheckoutDate DATE,
  DueDate DATE,
  ReturnDate DATE,
  FOREIGN KEY (Book_ID) REFERENCES Books(Book_ID),
  FOREIGN KEY (Member_ID) REFERENCES Members(Member_ID)
);
