# Practice Journal

* Ruby version v 2.53

* yarn dependencies </br>
  "cloudinary-react": "^1.3.2", </br>
  "mic-recorder-to-mp3": "^2.2.1", </br>
  "prop-types": "^15.7.2", </br>
  "react": "^16.13.0", </br>
  "react-dom": "^16.13.0", </br>
  "react-icons": "^3.9.0", </br>
  "react-pdf": "^4.1.0" </br>
* Gem
  Cloudinary
## Why I made this app
Whenever I want to practice playing the violin, I find it troublesome that I have to find my practice journal, my music scores, and my audio recorder before I can start practicing. Thus, I thought of the idea to create a web-based application which have access to these 3 things at once.

## What my app does
This is an app which helps musicians practise purposefully and systematically. Everyday, users will be able to journal their goals and reflection. In each daily entry, they can also submit audio recordings of their playing so they can keep track of their playing and identify ways they can improve on it.

## Database Schema
Journal Entry</br>
Goals :string</br>
Reflections :string</br>
Date </br>
</br>
Recordings</br>
Journal_id </br>
File :string(URL)

## General Process
1. Coming up with the wireframe
2. Looking for middlewares that allow me to record audio and display music sheet.
3. Planning how I should stack my React Componenets
4. Linking the back-end
5. Aesthetics

## Major hurdles and how I overcame them
When I had the idea to create this app, my initial concern was to find a way to record audio files. Fortunately I came across this module [mic-recorder-to-mp3](https://www.npmjs.com/package/mic-recorder-to-mp3), a package which can enable the client's built-in microphone to record audio files.

Then, I needed to find a way to store and retrieve the audio files. The audio files has to be stored in the database if they were to be stored permanently(and not get wiped away from a refresh). As this is a SPA, I need to find a way to pass audio files with a XMLHttpRequest. The audio file is a Javascript File Object of a Binary Large Object DataType. One way to pass such data is to use the FormData Object, which is an object consisting of key-value pairs, specifically used to transfer data over a XMLHttpRequest. Once the audio files could be passed over, the audio files can be easily stored using the Cloudinary API - it will store the actual file in the cloud and provide a link with which you can access it. The link will be stored in the database.

As I am using the same POST request to create and update a journal entry, when the users is adding new recordings (with existing ones) , the data-type of the audio files will not be uniform in a POST request - existing recordings will be a URL link, whereas new recordings will be a Javascript File Object. To go about this issue, I came up with the solution of creating a conditional loop where it ignores the URL link and only insert new recordings into the journal entry.


