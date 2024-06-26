/*****PLEASE ENTER YOUR DETAILS BELOW*****/
--T5-pf-select.sql

--Student ID: 33554714
--Student Name: Mitsuki Morinaga


/* Comments for your marker:




*/


/* (a) */
-- PLEASE PLACE REQUIRED SQL SELECT STATEMENT FOR THIS PART HERE
-- ENSURE that your query is formatted and has a semicolon
-- (;) at the end of this answer
SELECT
    c.clinic_id,
    v.vet_id,
    v.vet_givenname
    || ' '
    || v.vet_familyname AS vet_name,
    CASE
        WHEN v.vet_id = c.vet_id THEN
            'Head Vet'
        ELSE
            ' '
    END                 AS ishead,
    CASE
        WHEN a.atype_id = 1 THEN
            'Dog'
        WHEN a.atype_id = 2 THEN
            'Cat'
        ELSE
            'Other'
    END                 AS animal_type,
    COUNT(*)            AS numberappts,
    round((COUNT(*) * 100.0) / total.total_appts, 1)
    || '%'              AS percentage_of_appointments
FROM
    visit       vi
    JOIN clinic c
    ON c.clinic_id = vi.clinic_id
    JOIN vet v
    ON vi.vet_id = v.vet_id
    JOIN animal a
    ON a.animal_id = vi.animal_id
    JOIN (
        SELECT
            clinic_id,
            COUNT(*)  AS total_appts
        FROM
            visit
        GROUP BY
            clinic_id
    ) total
    ON c.clinic_id = total.clinic_id
WHERE
    a.atype_id IN (
        SELECT
            atype_id
        FROM
            animal_type
        WHERE
            upper(atype_description) IN ('DOG', 'CAT')
    )
GROUP BY
    c.clinic_id,
    v.vet_id,
    v.vet_givenname,
    v.vet_familyname,
    c.vet_id,
    a.atype_id,
    total.total_appts
ORDER BY
    c.clinic_id,
    c.vet_id;

/* (b) */
-- PLEASE PLACE REQUIRED SQL SELECT STATEMENT FOR THIS PART HERE
-- ENSURE that your query is formatted and has a semicolon
-- (;) at the end of this answer
SELECT
    vis.service_code,
    s.service_desc,
    v.vet_id,
    v.vet_givenname,
    v.vet_familyname,
    c.clinic_id,
    c.clinic_name,
    vi.visit_id,
    to_char(vi.visit_date_time, 'YYYY-MM-DD HH24:MI') AS visit_date_time,
    vis.visit_service_linecost
FROM
    visit         vi
    JOIN clinic c
    ON c.clinic_id = vi.clinic_id
    JOIN vet v
    ON vi.vet_id = v.vet_id
    JOIN animal a
    ON a.animal_id = vi.animal_id
    JOIN visit_service vis
    ON vi.visit_id = vis.visit_id
    JOIN service s
    ON vis.service_code = s.service_code
WHERE
    vis.visit_service_linecost > s.service_std_cost
GROUP BY
    vis.service_code,
    s.service_desc,
    v.vet_id,
    v.vet_givenname,
    v.vet_familyname,
    s.service_desc,
    c.clinic_id,
    c.clinic_name,
    vi.visit_id,
    to_char(vi.visit_date_time, 'YYYY-MM-DD HH24:MI'),
    vis.visit_service_linecost
ORDER BY
    vis.service_code;