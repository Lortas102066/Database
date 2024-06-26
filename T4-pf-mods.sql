/*****PLEASE ENTER YOUR DETAILS BELOW*****/
--T4-pf-mods.sql

--Student ID: 33554714
--Student Name: Mitsuki Morinaga


/* Comments for your marker:




*/

/*(a)*/
ALTER TABLE visit ADD service_charge_difference NUMBER(2) DEFAULT 0;

SELECT
    *
FROM
    visit;

DESC visit;

/*(b)*/
DROP TABLE payment CASCADE CONSTRAINTS PURGE;

CREATE TABLE payment (
    visit_id NUMBER(5) NOT NULL,
    payment_id NUMBER(5) NOT NULL,
    payment_date DATE NOT NULL,
    install_no NUMBER(2) DEFAULT 1,
    installment_cost NUMBER(5, 2) DEFAULT 0,
    payment_type VARCHAR(4), -- CARD OR CASH
    payment_statement VARCHAR(50) NOT NULL
);

COMMENT ON COLUMN payment.visit_id IS 'Unique identifier for each visit';
COMMENT ON COLUMN payment.payment_id IS 'Unique identifier for each visit payment';
COMMENT ON COLUMN payment.installment_cost IS 'Installment fee left';

ALTER TABLE payment ADD CONSTRAINT visit_payment_pk PRIMARY KEY (visit_id, payment_id);

INSERT INTO payment (
    visit_id,
    payment_id,
    payment_date,
    install_no,
    installment_cost,
    payment_type,
    payment_statement
) VALUES (
    1,
    1,
    TO_DATE('2024-05-01 10:00', 'YYYY-MM-DD HH24:MI'),
    2,
    0.00,
    'CARD',
    'Historical'
);

INSERT INTO payment (
    visit_id,
    payment_id,
    payment_date,
    install_no,
    installment_cost,
    payment_type,
    payment_statement
) VALUES (
    2,
    2,
    TO_DATE('2024-05-02 10:00', 'YYYY-MM-DD HH24:MI'),
    3,
    0.00,
    'CASH',
    'Historical'
);

INSERT INTO payment (
    visit_id,
    payment_id,
    payment_date,
    install_no,
    installment_cost,
    payment_type,
    payment_statement
) VALUES (
    3,
    3,
    TO_DATE('2024-05-03 10:00', 'YYYY-MM-DD HH24:MI'),
    1,
    0.00,
    'CASH',
    'Historical'
);

INSERT INTO payment (
    visit_id,
    payment_id,
    payment_date,
    install_no,
    installment_cost,
    payment_type,
    payment_statement
) VALUES (
    4,
    4,
    TO_DATE('2024-05-04 10:00', 'YYYY-MM-DD HH24:MI'),
    2,
    0.00,
    'CARD',
    'Historical'
);

INSERT INTO payment (
    visit_id,
    payment_id,
    payment_date,
    install_no,
    installment_cost,
    payment_type,
    payment_statement
) VALUES (
    5,
    5,
    TO_DATE('2024-05-05 10:00', 'YYYY-MM-DD HH24:MI'),
    1,
    0.00,
    'CARD',
    'Historical'
);

INSERT INTO payment (
    visit_id,
    payment_id,
    payment_date,
    install_no,
    installment_cost,
    payment_type,
    payment_statement
) VALUES (
    6,
    6,
    TO_DATE('2024-05-06 10:00', 'YYYY-MM-DD HH24:MI'),
    3,
    0.00,
    'CASH',
    'Historical'
);

INSERT INTO payment (
    visit_id,
    payment_id,
    payment_date,
    install_no,
    installment_cost,
    payment_type,
    payment_statement
) VALUES (
    7,
    7,
    TO_DATE('2024-05-07 10:00', 'YYYY-MM-DD HH24:MI'),
    1,
    0.00,
    'CASH',
    'Historical'
);

INSERT INTO payment (
    visit_id,
    payment_id,
    payment_date,
    install_no,
    installment_cost,
    payment_type,
    payment_statement
) VALUES (
    8,
    8,
    TO_DATE('2024-05-08 10:00', 'YYYY-MM-DD HH24:MI'),
    1,
    0.00,
    'CARD',
    'Historical'
);

INSERT INTO payment (
    visit_id,
    payment_id,
    payment_date,
    install_no,
    installment_cost,
    payment_type,
    payment_statement
) VALUES (
    9,
    9,
    TO_DATE('2024-05-09 10:00', 'YYYY-MM-DD HH24:MI'),
    2,
    63.00,
    'CASH',
    'Incomplete'
);

INSERT INTO payment (
    visit_id,
    payment_id,
    payment_date,
    install_no,
    installment_cost,
    payment_type,
    payment_statement
) VALUES (
    10,
    10,
    TO_DATE('2024-05-10 10:00', 'YYYY-MM-DD HH24:MI'),
    1,
    60.00,
    'CASH',
    'Incomplete'
);

SELECT
    visit_id,
    payment_id,
    to_char(payment_date, 'YYYY-MM-DD HH24:MI'),
    payment_statement
FROM
    payment;

DESC PAYMENT;