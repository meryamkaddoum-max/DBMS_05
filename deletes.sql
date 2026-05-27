PRAGMA foreign_keys = ON;

BEGIN;

DELETE FROM ausleihe
WHERE julianday(CURRENT_DATE) - julianday(rueckgabe_datum) > 30;

SELECT * FROM ausleihe;

COMMIT;



BEGIN;

DELETE FROM exemplar
WHERE exemplar_id = 3;

COMMIT;



BEGIN;

DELETE FROM ausleihe
WHERE exemplar_id = 3;

DELETE FROM exemplar
WHERE exemplar_id = 3;

SELECT * FROM exemplar;

COMMIT;

