/*****PLEASE ENTER YOUR DETAILS BELOW*****/
--T2-pf-insert.sql

--Student ID:
--Student Name:

/* Comments for your marker:




*/

--------------------------------------
--INSERT INTO visit
--------------------------------------
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
    1,
    TO_DATE('2024-05-01 10:00', 'YYYY-MM-DD HH24:MI'),
    45,
    'Initial consultation',
    5.5,
    NULL,
    1,
    1001,
    1,
    NULL
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
    2,
    TO_DATE('2024-05-02 14:30', 'YYYY-MM-DD HH24:MI'),
    30,
    'vaccination',
    7.2,
    NULL,
    2,
    1005,
    2,
    NULL
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
    3,
    TO_DATE('2024-05-03 14:30', 'YYYY-MM-DD HH24:MI'),
    30,
    'Dental checkup',
    7.2,
    NULL,
    3,
    1004,
    3,
    NULL
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
    4,
    TO_DATE('2024-05-04 14:30', 'YYYY-MM-DD HH24:MI'),
    30,
    'Spay/Neuter Surgery',
    7.2,
    NULL,
    5,
    1003,
    2,
    NULL
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
    5,
    TO_DATE('2024-05-05 14:30', 'YYYY-MM-DD HH24:MI'),
    30,
    'Nutritional consultation',
    7.2,
    NULL,
    5,
    1009,
    5,
    NULL
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
    6,
    TO_DATE('2024-05-06 14:30', 'YYYY-MM-DD HH24:MI'),
    30,
    'Behavioral assessment',
    7.2,
    NULL,
    1,
    1007,
    5,
    1
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
    7,
    TO_DATE('2024-05-07 14:30', 'YYYY-MM-DD HH24:MI'),
    30,
    'Routine health check',
    7.2,
    NULL,
    2,
    1001,
    1,
    2
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
    8,
    TO_DATE('2024-05-08 14:30', 'YYYY-MM-DD HH24:MI'),
    30,
    'Vaccination booster',
    7.2,
    NULL,
    3,
    1009,
    5,
    3
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
    9,
    TO_DATE('2024-05-09 14:30', 'YYYY-MM-DD HH24:MI'),
    30,
    'Routine checkup',
    7.2,
    126.00,
    4,
    1001,
    1,
    4
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
    10,
    TO_DATE('2024-05-10 14:30', 'YYYY-MM-DD HH24:MI'),
    30,
    'Annual vaccination',
    3.2,
    60.00,
    5,
    1008,
    3,
    5
);

--------------------------------------
--INSERT INTO visit_service
--------------------------------------
-- Continuing VISIT_SERVICE entries
INSERT INTO visit_service (
    visit_id,
    service_code,
    visit_service_linecost
) VALUES (
    1,
    'S001',
    60.00
);

INSERT INTO visit_service (
    visit_id,
    service_code,
    visit_service_linecost
) VALUES (
    2,
    'S002',
    45.00
);

INSERT INTO visit_service (
    visit_id,
    service_code,
    visit_service_linecost
) VALUES (
    3,
    'S006',
    80.00
);

INSERT INTO visit_service (
    visit_id,
    service_code,
    visit_service_linecost
) VALUES (
    4,
    'S005',
    125.00
);

INSERT INTO visit_service (
    visit_id,
    service_code,
    visit_service_linecost
) VALUES (
    5,
    'S001',
    60.00
);

INSERT INTO visit_service (
    visit_id,
    service_code,
    visit_service_linecost
) VALUES (
    6,
    'S020',
    90.00
);

INSERT INTO visit_service (
    visit_id,
    service_code,
    visit_service_linecost
) VALUES (
    7,
    'S018',
    120.00
);

INSERT INTO visit_service (
    visit_id,
    service_code,
    visit_service_linecost
) VALUES (
    8,
    'S002',
    45.00
);

INSERT INTO visit_service (
    visit_id,
    service_code,
    visit_service_linecost
) VALUES (
    9,
    'S011',
    90.00
);

INSERT INTO visit_service (
    visit_id,
    service_code,
    visit_service_linecost
) VALUES (
    10,
    'S002',
    45.00
);

INSERT INTO visit_service (
    visit_id,
    service_code,
    visit_service_linecost
) VALUES (
    1,
    'S020',
    90.00
);

INSERT INTO visit_service (
    visit_id,
    service_code,
    visit_service_linecost
) VALUES (
    2,
    'S018',
    120.00
);

INSERT INTO visit_service (
    visit_id,
    service_code,
    visit_service_linecost
) VALUES (
    3,
    'S002',
    45.00
);

INSERT INTO visit_service (
    visit_id,
    service_code,
    visit_service_linecost
) VALUES (
    4,
    'S011',
    90.00
);

INSERT INTO visit_service (
    visit_id,
    service_code,
    visit_service_linecost
) VALUES (
    5,
    'S002',
    45.00
);

INSERT INTO visit_service (
    visit_id,
    service_code,
    visit_service_linecost
) VALUES (
    6,
    'S018',
    190.00
);

INSERT INTO visit_service (
    visit_id,
    service_code,
    visit_service_linecost
) VALUES (
    7,
    'S002',
    80.00
);

--------------------------------------
--INSERT INTO visit_drug
--------------------------------------
INSERT INTO visit_drug (
    visit_id,
    drug_id,
    visit_drug_dose,
    visit_drug_frequency,
    visit_drug_qtysupplied,
    visit_drug_linecost
) VALUES (
    1,
    101,
    '250mg',
    'Once daily',
    2,
    20.00
);

INSERT INTO visit_drug (
    visit_id,
    drug_id,
    visit_drug_dose,
    visit_drug_frequency,
    visit_drug_qtysupplied,
    visit_drug_linecost
) VALUES (
    2,
    103,
    '1 microchip',
    'One time',
    1,
    70.00
);

INSERT INTO visit_drug (
    visit_id,
    drug_id,
    visit_drug_dose,
    visit_drug_frequency,
    visit_drug_qtysupplied,
    visit_drug_linecost
) VALUES (
    3,
    104,
    '0.5ml',
    'As needed',
    1,
    50.00
);

INSERT INTO visit_drug (
    visit_id,
    drug_id,
    visit_drug_dose,
    visit_drug_frequency,
    visit_drug_qtysupplied,
    visit_drug_linecost
) VALUES (
    3,
    105,
    '200mg',
    'Twice daily',
    5,
    25.00
);

INSERT INTO visit_drug (
    visit_id,
    drug_id,
    visit_drug_dose,
    visit_drug_frequency,
    visit_drug_qtysupplied,
    visit_drug_linecost
) VALUES (
    4,
    106,
    '5ml',
    'Daily',
    1,
    10.00
);

INSERT INTO visit_drug (
    visit_id,
    drug_id,
    visit_drug_dose,
    visit_drug_frequency,
    visit_drug_qtysupplied,
    visit_drug_linecost
) VALUES (
    5,
    107,
    '0.1ml per kg',
    'Monthly',
    3,
    48.00
);

INSERT INTO visit_drug (
    visit_id,
    drug_id,
    visit_drug_dose,
    visit_drug_frequency,
    visit_drug_qtysupplied,
    visit_drug_linecost
) VALUES (
    8,
    110,
    'Apply 2 drops',
    'Twice daily',
    1,
    30.00
);

INSERT INTO visit_drug (
    visit_id,
    drug_id,
    visit_drug_dose,
    visit_drug_frequency,
    visit_drug_qtysupplied,
    visit_drug_linecost
) VALUES (
    9,
    111,
    'One tablet',
    'Daily',
    30,
    36.00
);

INSERT INTO visit_drug (
    visit_id,
    drug_id,
    visit_drug_dose,
    visit_drug_frequency,
    visit_drug_qtysupplied,
    visit_drug_linecost
) VALUES (
    10,
    112,
    '50ml',
    'During procedure',
    1,
    15.00
);

INSERT INTO visit_drug (
    visit_id,
    drug_id,
    visit_drug_dose,
    visit_drug_frequency,
    visit_drug_qtysupplied,
    visit_drug_linecost
) VALUES (
    1,
    113,
    'Apply as needed',
    'During ultrasound',
    1,
    3.00
);

INSERT INTO visit_drug (
    visit_id,
    drug_id,
    visit_drug_dose,
    visit_drug_frequency,
    visit_drug_qtysupplied,
    visit_drug_linecost
) VALUES (
    2,
    114,
    '0.01 mg per kg',
    'Post-surgery',
    1,
    14.00
);

COMMIT;