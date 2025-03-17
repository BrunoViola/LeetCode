-- Link do enunciado: https://leetcode.com/problems/dna-pattern-recognition/description/
SELECT sample_id, dna_sequence, species,
    COUNT(CASE WHEN dna_sequence LIKE 'ATG%' THEN 1 END) AS has_start,
    COUNT(CASE WHEN dna_sequence LIKE '%TAA' THEN 1
               WHEN dna_sequence LIKE '%TAG' THEN 1
               WHEN dna_sequence LIKE '%TGA' THEN 1 END) AS has_stop,
    COUNT(CASE WHEN dna_sequence LIKE '%ATAT%' THEN 1 END) AS has_atat,
    COUNT(CASE WHEN dna_sequence LIKE '%GGG%' THEN 1 END) AS has_ggg
    FROM Samples
    GROUP BY sample_id, dna_sequence, species;