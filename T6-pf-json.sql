/*****PLEASE ENTER YOUR DETAILS BELOW*****/
--T6-pf-json.sql

--Student ID: 33554714
--Student Name: Mitsuki Morinaga


/* Comments for your marker:




*/

-- PLEASE PLACE REQUIRED SQL SELECT STATEMENT TO GENERATE
-- THE COLLECTION OF JSON DOCUMENTS HERE
-- ENSURE that your query is formatted and has a semicolon
-- (;) at the end of this answer
SELECT
    JSON_OBJECT ( '_id' VALUE c.clinic_id, 'name' VALUE c.clinic_name, 'contactInfo' VALUE JSON_OBJECT ( 'address' VALUE c.clinic_address, 'phone' VALUE c.clinic_phone ), 'head_vet' VALUE JSON_OBJECT( 'id' VALUE hv.vet_id, 'name' VALUE (hv.vet_givenname
                                                                                                                                                                                                                                             || ' '
                                                                                                                                                                                                                                             || hv.vet_familyname), 'specialisation' VALUE (
        CASE
            WHEN hv.spec_description IS NULL THEN
                'N/A'
            ELSE
                hv.spec_description
        END) ), 'vets' VALUE json_arrayagg( JSON_OBJECT( 'id' VALUE v.vet_id, 'name' VALUE (v.vet_givenname
                                                                                            || ' '
                                                                                            || v.vet_familyname), 'specialisation' VALUE (
        CASE
            WHEN s.spec_description IS NULL THEN
                'N/A'
            ELSE
                s.spec_description
        END) ) ) FORMAT JSON )
    || ','
FROM
    clinic         c
    JOIN vet v
    ON c.clinic_id = v.clinic_id
    LEFT JOIN specialisation s
    ON v.spec_id = s.spec_id
    LEFT JOIN (
        SELECT
            v.vet_id,
            v.vet_givenname,
            v.vet_familyname,
            v.clinic_id,
            s.spec_description
        FROM
            vet            v
            JOIN specialisation s
            ON v.spec_id = s.spec_id
        WHERE
            v.vet_id IN (
                SELECT
                    vet_id
                FROM
                    clinic
            )
    ) hv
    ON hv.clinic_id = c.clinic_id
    AND hv.vet_id = c.vet_id
GROUP BY
    c.clinic_id,
    c.clinic_name,
    c.clinic_address,
    c.clinic_phone,
    hv.vet_id,
    hv.vet_givenname,
    hv.vet_familyname,
    hv.spec_description
ORDER BY
    c.clinic_id;