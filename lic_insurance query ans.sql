USE lic_insurance;
-- 	Q1 - Give policy detail for hulk , peter ?
-- Ans
SELECT 
    ph.name AS policy_holder_name,
    p.policy_no,
    p.type,
    p.issued_date,
    p.coverage_amt
FROM 
    policy_holder ph
JOIN 
    policy p ON ph.p_id = p.p_id
WHERE 
    ph.name IN ('hulk', 'peter');
    
    
-- 	Q2 - Give nominee for policy taken by tony ?
SELECT 
    ph.name AS policy_holder_name,
    n.n_name AS nominee_name,
    n.rwc AS relationship_with_claimant,
    n.phone_no AS nominee_phone_no
FROM 
    policy_holder ph
JOIN 
    policy p ON ph.p_id = p.p_id
JOIN 
    nominee n ON ph.n_id = n.n_id
WHERE 
    ph.name = 'Tony';
    
    
-- Q3 - Give agent detail who providepolicy to any holder whose claim amount greater than 1 lakh ?
SELECT 
    a.agent_id,
    a.name AS agent_name,
    a.phone_no AS agent_phone_no,
    a.gender AS agent_gender
FROM 
    claims c
JOIN 
    policy p ON c.policy_no = p.policy_no
JOIN 
    agent a ON p.agent_id = a.agent_id
WHERE 
    c.claim_amt > 100000;
    
    
-- Q4 - Give policy detail with holder name and nominee name whose claim status is approved ?
SELECT 
    p.policy_no,
    p.type AS policy_type,
    p.issued_date,
    p.coverage_amt,
    ph.name AS policy_holder_name,
    n.n_name AS nominee_name
FROM 
    claims c
JOIN 
    policy p ON c.policy_no = p.policy_no
JOIN 
    policy_holder ph ON p.p_id = ph.p_id
JOIN 
    nominee n ON c.n_id = n.n_id
WHERE 
    c.claim_status = 'approved';
    
    
-- Q5 - Give all pairs of employee who work in same role in employee table ? ( give pair of e_id)
SELECT 
    e1.e_id AS employee1_id,
    e2.e_id AS employee2_id
FROM 
    employee e1
JOIN 
    employee e2 ON e1.role = e2.role
WHERE 
    e1.e_id < e2.e_id;
    
    
-- Q6 - Give relation of nominee for policy holder SW21 , KS32 . give nominee name , phone no also ?
SELECT 
    n.n_name AS nominee_name,
    n.rwc AS relationship_with_claimant,
    n.phone_no AS nominee_phone_no
FROM 
    policy_holder ph
JOIN 
    nominee n ON ph.n_id = n.n_id
WHERE 
    ph.p_id IN ('SW21', 'KS32');

