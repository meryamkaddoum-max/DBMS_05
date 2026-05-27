PRAGMA foreign_keys = OFF;

-- Task 4a
ALTER TABLE mitglied
ADD COLUMN telefon TEXT;


CREATE TABLE buch_neu (
    isbn TEXT PRIMARY KEY,
    titel TEXT NOT NULL,
    erscheinungsjahr INTEGER NOT NULL
        CHECK (erscheinungsjahr BETWEEN 1450 AND 2100),
    verlag TEXT NOT NULL,
    tagesgebuehr NUMERIC(4,2) NOT NULL
        CHECK (tagesgebuehr > 0)
);

INSERT INTO buch_neu
SELECT * FROM buch;

DROP TABLE buch;

ALTER TABLE buch_neu
RENAME TO buch;
PRAGMA foreign_keys = ON;
