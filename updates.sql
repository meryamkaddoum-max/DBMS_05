PRAGMA foreign_keys = ON;

BEGIN;

UPDATE buch
SET verlag = 'Deutscher Taschenbuch Verlag'
WHERE verlag = 'dtv';

SELECT * FROM buch;

COMMIT;



BEGIN;

UPDATE ausleihe
SET rueckgabe_datum = CURRENT_DATE
WHERE ausleihe_id = 2;

SELECT * FROM ausleihe;

COMMIT;



BEGIN;

UPDATE buch
SET tagesgebuehr = tagesgebuehr + 0.10
WHERE erscheinungsjahr < 1960;

SELECT * FROM buch;

COMMIT;
