# _Epicutters Salon_

#### _A web app for owners to manage freelance stylists and their clients, v2.0 2016-12-15_

#### By _Michael Andrade, with thanks to Epicodus_

## Description

A web app which allows the user to manage a list of contractors and their clients. The user may create and delete entries for each contractor and client, and update which clients are assigned to each contractor.

## Setup/Installation Requirements

Database Setup:

In PSQL:

CREATE DATABASE hair_salon;
CREATE TABLE stylists (id serial PRIMARY KEY, name varchar);
CREATE TABLE clients (id serial PRIMARY KEY, name varchar, stylist_id integer);


## Known Bugs

There is no way for the user to differentiate between two stylists or clients with identical names, except their order in lists.

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
