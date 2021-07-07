# README

## Corkboard - instant messaging for the people
### Brought to you by Zark Borges & Winston Barbe

Corkboard is a simple demo of a peer to peer messaging app that will implement Action Cable and include a React front it. What follows is the steps ZB and I took on July 6th 2021 to build this app

------- 

## Todo

* Models

  - Users 
  - Connections 
  - Messages
    
    - messages will use action cable to open a stream for instant messagaing

* Associations  

  - Users *implement authentication*

    - have many connections
    - have many messages
    

  - Connections
    
    - belongs to a sender through the User
    - belongs to a recipent through the User
    - has many messages

  - Messages

    - belongs to a User
    - belongs to a connection

* Create Mock Data in the seeds File

* Test Associations in console

* Build Routes and Controllers

* Test

-----

## Ice Box && Ideas

* how do we get read recepts to work
 
* Instant notifications
