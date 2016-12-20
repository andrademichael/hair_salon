# _Epicutters Salon_

#### _A web app for owners to manage freelance stylists and their clients, v2.0 2016-12-15_

#### By _Michael Andrade, with thanks to Epicodus_

## Description

A web app which allows the user to manage a list of contractors and their clients. The user may create and delete entries for each contractor and client, and update which clients are assigned to each contractor.

## Setup/Installation Requirements

The following user stories should be completed:

As a salon owner, I want to view, add, update and delete stylists.
As a salon owner, I want to view, add, update and delete clients.
As a salon owner, I want to add clients to a stylist.
Additional Requirements
For this code review, please use the following names for your databases:

Production Database: hair_salon
Development Database: hair_salon_test
Resource names will be clients and stylists

In your README, include database setup instructions with your database names and tables for (see example for 'To Do' application below):

In PSQL:

CREATE DATABASE hair_salon;
CREATE TABLE stylists (id serial PRIMARY KEY, name varchar);
CREATE TABLE clients (id serial PRIMARY KEY, name varchar, stylist_id integer);



Objectives
Your code will be reviewed for the following objectives:

Use of standard naming conventions for database tables and columns.
Correct set up of a one-to-many relationship.
Execution of CRUD functionality in class methods and routes.
Use of RESTful routes.
All previous code standards met. (Except you are not required to deploy to Heroku this week.)
Required functionality was in place by the 5:00pm Friday deadline.
Project is in a polished, portfolio-quality state.
Project demonstrates an understanding of this week's concepts. If prompted, you can discuss your code with an instructor using correct terminology.
Submission
## Known Bugs

No known bugs... yet.

## Support and contact details

For questions, ideas, or concerns, email me with the subject line "Github"!

## Technologies Used

Backend written in Ruby, with PostgreSQL database and Extended Ruby frontend.

### License

This file is part of Epicutters Salon.

    Epicutters Salon is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    Epicutters Salon is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with the (Program Name).  If not, see <http://www.gnu.org/licenses/>.

Copyright (c) 2016 **_Michael Andrade_**
