// *****PLEASE ENTER YOUR DETAILS BELOW*****
// T6-pf-mongo.mongodb.js

// Student ID: 33554714
// Student Name: Mitsuki Morinaga
// Unit Code: FIT2094
// Applied Class No: 10

// Comments for your marker:

// ===================================================================================
// Do not modify or remove any of the comments below (items marked with //)
// ===================================================================================

// Use (connect to) your database - you MUST update xyz001
// with your authcate username

use("mmor0077");

// (b)
// PLEASE PLACE REQUIRED MONGODB COMMAND TO CREATE THE COLLECTION HERE
// YOU MAY PICK ANY COLLECTION NAME
// ENSURE that your query is formatted and has a semicolon
// (;) at the end of this answer

// Drop collection
db.clinics.drop();

// Create collection and insert documents

db.createCollection("clinics");
db.clinics.insertMany([
  {
    "_id": 1,
    "name": "East Melbourne Veterinary Center",
    "contactInfo": {
      "address": "47 Blackburn Road, Burwood East VIC 3151",
      "phone": "0398123456",
    },
    "head_vet": {
      "id": 1001,
      "name": "Emily Tanner",
      "specialisation": "General Practice",
    },
    "vets": [
      {
        "id": 1001,
        "name": "Emily Tanner",
        "specialisation": "General Practice",
      },
      { "id": 1006, "name": "Sophie Grant", "specialisation": "Dermatology" },
    ],
  },
  {
    "_id": 2,
    "name": "Northern Suburbs Animal Hospital",
    "contactInfo": {
      "address": "78 High St, Thornbury VIC 3071",
      "phone": "0390215478",
    },
    "head_vet": {
      "id": 1003,
      "name": "John ",
      "specialisation": "Emergency Medicine",
    },
    "vets": [
      { "id": 1003, "name": "John ", "specialisation": "Emergency Medicine" },
      { "id": 1005, "name": "Owen Murphy", "specialisation": "N/A" },
    ],
  },
  {
    "_id": 3,
    "name": "Bayside Veterinary Clinic",
    "contactInfo": {
      "address": "32 Bay Rd, Sandringham VIC 3191",
      "phone": "0398765433",
    },
    "head_vet": {
      "id": 1004,
      "name": "Anna Kowalski",
      "specialisation": "Dentistry",
    },
    "vets": [
      { "id": 1004, "name": "Anna Kowalski", "specialisation": "Dentistry" },
      { "id": 1008, "name": " Watson", "specialisation": "N/A" },
    ],
  },
  {
    "_id": 4,
    "name": "Glen Iris Vet Clinic",
    "contactInfo": {
      "address": "1501 High St, Glen Iris VIC 3146",
      "phone": "0398123458",
    },
    "head_vet": {
      "id": 1002,
      "name": "Lucas Bennet",
      "specialisation": "Dermatology",
    },
    "vets": [
      { "id": 1002, "name": "Lucas Bennet", "specialisation": "Dermatology" },
      { "id": 1011, "name": "Liam Foster", "specialisation": "Cardiology" },
    ],
  },
  {
    "_id": 5,
    "name": "Brighton East Pet Care",
    "contactInfo": {
      "address": "123 Thomas St, Brighton East VIC 3187",
      "phone": "0398765412",
    },
    "head_vet": {
      "id": 1007,
      "name": "Jessica Lee",
      "specialisation": "Behavioral Medicine",
    },
    "vets": [
      {
        "id": 1010,
        "name": "Michael Clarkson",
        "specialisation": "Cardiology",
      },
      { "id": 1009, "name": "Sarah Morris", "specialisation": "N/A" },
      {
        "id": 1007,
        "name": "Jessica Lee",
        "specialisation": "Behavioral Medicine",
      },
    ],
  },
]);

// List all documents you added
db.clinics.find();

// (c)
// PLEASE PLACE REQUIRED MONGODB COMMAND/S FOR THIS PART HERE
// ENSURE that your query is formatted and has a semicolon
// (;) at the end of this answer
db.clinics.find(
  { "vets.specialisation": { $in: ["Dermatology", "Cardiology"] } },
  { "name": 1, "address": 1 }
);

// (d)
// PLEASE PLACE REQUIRED MONGODB COMMAND/S FOR THIS PART HERE
// ENSURE that your query is formatted and has a semicolon
// (;) at the end of this answer

// Show document before the new vet is added
db.clinics.find();

// Add new vet and set the vet as the head of clinic
db.clinics.updateOne(
  { "_id": 5 },
  {
    $set: {
      "head_vet": {
        "id": 1020,
        "name": "Sarah Wilkinson",
      },
    },
    $push: {
      "no_of_vets": 4,
      "vets": {
        "id": 1020,
        "name": "Sarah Wilkinson",
        "specialisation": "Dentistry",
      },
    },
  }
);

// Illustrate/confirm changes made
