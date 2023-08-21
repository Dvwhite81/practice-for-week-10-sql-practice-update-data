.read seed-data.sql

/* Directions say "Amy Pond", but it is
   "Ryan Pond" in the table
*/
UPDATE friends
SET first_name = 'Amy',
    last_name = 'Blue'
WHERE first_name = 'Ryan'
AND last_name = 'Pond';
/* If it was "Amy Pond" :
UPDATE friends
SET last_name = 'Blue'
WHERE first_name = 'Amy'
AND last_name = 'Pond';
*/

UPDATE friends
SET last_name = 'Smith'
WHERE first_name = 'Tyler'
  AND last_name = 'Rose';
/* This doesn't do anything */

/* Directions say "Rose Tyler", but it is
   "Sky Tyler" in the table
*/
UPDATE friends
SET first_name = 'Rose',
    last_name = 'Smith'
WHERE first_name = 'Sky'
AND last_name = 'Tyler';
/* If it was "Rose Tyler" :
UPDATE friends
SET last_name = 'Smith'
WHERE first_name = 'Rose'
AND last_name = 'Tyler';
*/

/* Bonus */
/* Trigger an UPDATE error */
UPDATE friends
SET last_name = NULL
WHERE id = 5;

/* Prevent error while removing last name */
UPDATE friends
SET last_name = ''
WHERE id = 5;
