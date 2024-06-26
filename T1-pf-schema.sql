--*****PLEASE ENTER YOUR DETAILS BELOW*****
--T1-pf-schema.sql

--Student ID: 33554714
--Student Name: Mitsuki Morinaga


/* Comments for your marker:




*/

-- Task 1 Add Create table statements for the Missing TABLES below.
-- Ensure all column comments, and constraints (other than FK's)are included.
-- FK constraints are to be added at the end of this script
-- VISIT
CREATE TABLE visit (
    visit_id NUMBER(5) NOT NULL,
    visit_date_time DATE NOT NULL,
    visit_length NUMBER(3) CHECK (visit_length BETWEEN 30 AND 90),
    visit_notes VARCHAR2(200),
    visit_weight NUMBER(4, 1),
    visit_total_cost NUMBER(6, 2),
    animal_id NUMBER(5) NOT NULL,
    vet_id NUMBER(4) NOT NULL,
    clinic_id NUMBER(2) NOT NULL,
    from_visit_id NUMBER(5)
);

COMMENT ON COLUMN visit.visit_id IS 'Unique identifier for each visit';

ALTER TABLE visit ADD CONSTRAINT visit_pk PRIMARY KEY (visit_id);

ALTER TABLE visit ADD CONSTRAINT visit_animal_fk FOREIGN KEY (animal_id) REFERENCES animal (animal_id);

ALTER TABLE visit ADD CONSTRAINT visit_vet_fk FOREIGN KEY (vet_id) REFERENCES vet (vet_id);

ALTER TABLE visit ADD CONSTRAINT visit_clinic_fk FOREIGN KEY (clinic_id) REFERENCES clinic (clinic_id);

ALTER TABLE visit ADD CONSTRAINT visit_followup_fk FOREIGN KEY (from_visit_id) REFERENCES visit (visit_id);

-- VISIT_DRUG
DESC VISIT_DRUG;

CREATE TABLE visit_drug (
    visit_id NUMBER(5) NOT NULL,
    drug_id NUMBER(4) NOT NULL,
    visit_drug_dose VARCHAR2(20),
    visit_drug_frequency VARCHAR(20),
    visit_drug_qtysupplied NUMBER(2),
    visit_drug_linecost NUMBER(5, 2)
);

COMMENT ON COLUMN visit_drug.visit_id IS 'Unique identifier for each visit';

ALTER TABLE visit_drug ADD CONSTRAINT visit_drug_pk PRIMARY KEY (visit_id, drug_id);

ALTER TABLE visit_drug ADD CONSTRAINT visit_drug_visit_fk FOREIGN KEY (visit_id) REFERENCES visit (visit_id);

ALTER TABLE visit_drug ADD CONSTRAINT visit_drug_drug_fk FOREIGN KEY (drug_id) REFERENCES drug (drug_id);

-- VISIT_SERVICE

CREATE TABLE visit_service (
    visit_id NUMBER(5) NOT NULL,
    service_code CHAR(5) NOT NULL,
    visit_service_linecost NUMBER(6, 2)
);

COMMENT ON COLUMN visit_service.visit_id IS 'Unique identifier for each visit';
ALTER TABLE visit_service ADD CONSTRAINT visit_service_pk PRIMARY KEY (visit_id, service_code);

ALTER TABLE visit_service ADD CONSTRAINT visit_service_visit_fk FOREIGN KEY (visit_id) REFERENCES visit (visit_id);

ALTER TABLE visit_service ADD CONSTRAINT visit_service_service_fk FOREIGN KEY (service_code) REFERENCES service (service_code);

-- Add all missing FK Constraints below here