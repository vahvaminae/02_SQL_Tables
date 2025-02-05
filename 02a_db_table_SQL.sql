/* ------  Strukturen ----- */

/* Kommentar 1 */
#  Kommentar 2
-- Kommentar 3

/* Datenbanken auf Server anzeigen */
#SHOW DATABASES;

# DB löschen falls existent
DROP DATABASE IF EXISTS boo;

# DB boo anlegen, falls noch nicht vorhanden
CREATE DATABASE IF NOT EXISTS boo;

SHOW DATABASES;

#db boo löschen falls noch nicht gelöscht

#DROP DATABASE IF EXISTS boo;

#SHOW DATABASES;

#CREATE DATABASE boo;

# DB auswählen

USE boo;

# Anzeigen der Tabellen in der Datenbank, die vorher ausgewählt worden ist
DROP TABLE IF EXISTS coworkers;

CREATE TABLE IF NOT EXISTS coworkers 
(                # VARCHAR = Zeichenkette mit 20 Zeichen Länge 
   firstName    VARCHAR(20),
   location     VARCHAR(20),
   age          TINYINT,  #steht für Zahlen von 0 bis 255
   computer     VARCHAR(20)
    
);

SHOW TABLES;

DESCRIBE coworkers;

# Dateneingabe

INSERT INTO coworkers(firstName,location,age,computer)VALUES("Max","office",35,"PC");

INSERT INTO coworkers(firstName,location,age,computer)VALUES("Gani","pool",36,"Ipad");

INSERT INTO coworkers(firstName,location,age,computer)VALUES("Sohrab","bed",26,"Mac");

# alles anzeigen an Inhalte der Tabelle

SELECT * FROM coworkers;

# Inhalte filtern 

SELECT * FROM coworkers WHERE location= "pool";

#Inhalte sortieren

SELECT firstName AS "Name",location AS "Ort", age AS "Alter" FROM coworkers
#WHERE age > 35     ASC = ordnet von klein nach groß
#ORDER BY age ASC

# ordnet nach groß nach klein
ORDER BY age DESC
#limietiert die Datensätze, die angezeigt werden
LIMIT 1
;


