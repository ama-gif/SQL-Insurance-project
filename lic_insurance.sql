CREATE DATABASE IF NOT EXISTS lic_insurance;
USE lic_insurance;

CREATE TABLE agent(
agent_id varchar(50) PRIMARY KEY,
e_id varchar(50),
p_id varchar(50),
name varchar(50) NOT NULL,
phone_no float,
gender varchar(50)
);


CREATE TABLE policy_holder(
 p_id varchar(50) PRIMARY KEY,
n_id varchar(50),
agent_id varchar(50),
 name varchar(50), 
 DOB DATE,
 city varchar(50)
 );

CREATE TABLE employee(
e_id varchar(50) PRIMARY KEY,
claim_id varchar(50),
p_id varchar(50),
name varchar(50),
role varchar(50),
dept varchar(50)
);


CREATE TABLE claims(
claim_id varchar(50) PRIMARY KEY,
e_id varchar(50),
policy_no varchar(50),
n_id varchar(50),
DOC DATE,
claim_amt int,
claim_status varchar(50)
);


CREATE Table policy(
policy_no varchar(50) PRIMARY KEY,
agent_id varchar(50),
p_id varchar(50),
type varchar(50),
issued_date date,
coverage_amt float
);


CREATE TABLE nominee(
n_id varchar(50) PRIMARY KEY,
p_id varchar(50),
claim_id varchar(50),
n_name varchar(50),
RWC varchar(50),
phone_no float
);




INSERT INTO agent
(agent_id, e_id, p_id, name,phone_no, gender)
values
("A1", "e1", "SK02","Subhash", 7415472664, "m"),
("A2", "e2", "WG43","Rahul", 6263703321, "m"),
 ("A3", "e3","SW21","Swastik", 8319345634, "m"),
 ("A4","e4","KS32" ,"Yash", 8104929438, "m"),
 ("A5", "e5" ,"MW26","Nishita", 6264856801, "f");
 
 
 INSERT INTO policy_holder
(p_id, n_id, agent_id,name,DOB, city)
values
("SK02","n1" ,"A1","tony", "2004-04-22", "Bhopal"),
("MW26", "n2","A5","hulk", "2002-06-12" , "Ujjian"),
 ("KS32", "n3","A4","thor",  "2004-02-28", "Shahdol"),
 ("WG43", "n4", "A2","peter",  "2003-08-18", "Satna"),
 ("SW21", "n5","A3","strange", "2001-02-26", "Gwalior");
 
INSERT INTO employee
(e_id, claim_id, p_id, name,role,dept)
values
("e1", "C1","SK02","sunney", "sales and marketing", "Bhopal"),
("e2", "C2","WG43","ritik",  "claims management", "Ujjian"),
 ("e3", "C3","SW21","raj", "customer service" , "Shahdol"),
 ("e4", "C4","KS32","aman",  "underwritiing", "Satna"),
 ("e5", "C5","MW26","anant", "claims management", "Gwalior");

INSERT INTO claims
(claim_id,e_id,policy_no,n_id, DOC,claim_amt, claim_status)
values
("C1","e1", "p1","n1","2024-04-22", 1000000, "approved"),
("C2", "e2","p2","n4","2024-04-22", 5000000, "pending"),
 ("C3",  "e3","p3","n5","2024-01-27",  2000000, "pending"),
 ("C4", "e4","p4","n3","2024-02-10", 3500000, "approved"),
 ("C5",  "e5","p5","n2","2024-05-12", 2500000, "approved");
 

 INSERT INTO policy 
(policy_no, agent_id, p_id, type, issued_date, coverage_amt)
values
("P1", "A1","SK02","child plans", "2022-01-22",1000000),
("P2", "A2","WG43","term insurance", "2022-01-22",500000),
("P3", "A3","SW21","endowment plans", "2022-01-22",2000000),
("P4", "A4","KS32","term insurance", "2022-01-22",3500000),
("P5", "A5","MW26","child plans", "2022-01-22",2500000);

INSERT INTO nominee
(n_id, p_id, claim_id, n_name,rwc,phone_No)
values
("N1","SK02","C1" ,"John", "father", 6264376543),
("N2", "MW26","C5","Rock", "brother", 7426421293),
("N3", "KS32","C4","Undertaker", "sister", 7649295486),
("N4", "WG43","C2","Natasa", "brother", 7536427372),
("N5", "SW21","C3","Alexa", "wife", 7435342464);
