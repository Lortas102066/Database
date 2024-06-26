/*****PLEASE ENTER YOUR DETAILS BELOW*****/
--T3-pf-dml.sql

--Student ID: 33554714
--Student Name: Mitsuki Morinaga

/* Comments for your marker:




*/
/*(a)*/
DROP SEQUENCE visit_id_seq;

CREATE SEQUENCE visit_id_seq START WITH 100 INCREMENT BY 10;

/*(b)*/
INSERT INTO visit (
    visit_id,
    visit_date_time,
    visit_length,
    visit_notes,
    visit_weight,
    visit_total_cost,
    animal_id,
    vet_id,
    clinic_id,
    from_visit_id
) VALUES (
    visit_id_seq.NEXTVAL,
    TO_DATE('2024-05-19 14:00', 'YYYY-MM-DD HH24:MI'),
    30,
    (SELECT service_desc FROM service WHERE service_code = 'S001'),
    9.5,
    NULL,
    (SELECT a.animal_id FROM animal a WHERE upper(a.animal_name) = 'OREO'),
    (SELECT v.vet_id FROM vet v WHERE upper(v.vet_givenname
                                            || ' '
                                            || v.vet_familyname) = 'ANNA KOWALSKI'),
    (SELECT v.clinic_id FROM vet v WHERE upper(v.vet_givenname
                                               || ' '
                                               || v.vet_familyname) = 'ANNA KOWALSKI'),
    NULL
);

/*(c)*/
UPDATE visit
SET
    visit_notes = 'Follow-up required: Ear infection treatment needed',
    visit_total_cost = (
        SELECT
            service_std_cost
        FROM
            service
        WHERE
            upper(service_desc) = upper('Ear Infection Treatment')
    )
WHERE
    visit_id = (
        SELECT
            visit_id
        FROM
            visit
        WHERE
            animal_id = 7
    );

INSERT INTO visit_drug (
    visit_id,
    drug_id,
    visit_drug_dose,
    visit_drug_frequency,
    visit_drug_qtysupplied,
    visit_drug_linecost
) VALUES (
    (SELECT MAX(visit_id) FROM visit WHERE animal_id = 7),
    (SELECT drug_id FROM drug WHERE upper(drug_name) = upper('Clotrimazole')),
    '1 bottle',
    ' ',
    1,
    (SELECT drug_std_cost FROM drug WHERE upper(drug_name) = upper('Clotrimazole'))
);

INSERT INTO visit (
    visit_id,
    visit_date_time,
    visit_length,
    visit_notes,
    visit_weight,
    visit_total_cost,
    animal_id,
    vet_id,
    clinic_id,
    from_visit_id
) VALUES (
    visit_id_seq.NEXTVAL,
    TO_DATE('2024-05-26 14:00', 'YYYY-MM-DD HH24:MI'),
    30,
    'Scheduled follow-up for ear infection',
    3.5,
    80.00,
    (SELECT a.animal_id FROM animal a WHERE upper(a.animal_name) = upper('Oreo')),
    (SELECT v.vet_id FROM vet v WHERE upper(v.vet_givenname
                                            || ' '
                                            || v.vet_familyname) = upper('Anna Kowalski')),
    (SELECT c.clinic_id FROM clinic c JOIN vet v ON v.clinic_id = c.clinic_id WHERE upper(v.vet_givenname
                                                                                          || ' '
                                                                                          || v.vet_familyname) = upper('Anna Kowalski')),
    (SELECT MAX(visit_id) FROM visit WHERE animal_id = 7)
);

/*(d)*/

DELETE FROM visit
WHERE
    animal_id = 7
    AND visit_date_time = TO_DATE('2024-05-26 14:00', 'YYYY-MM-DD HH24:MI')
    AND visit_notes LIKE '%follow-up%';

COMMIT;