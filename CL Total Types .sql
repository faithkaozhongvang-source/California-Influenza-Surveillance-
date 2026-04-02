SELECT 
    region,
    season,
    SUM(CASE 
            WHEN Respiratory_Virus = 'Influenza_A' THEN Number_Positive 
            ELSE 0 
        END) AS Total_Influenza_A,
    
    SUM(CASE 
            WHEN Respiratory_Virus = 'Influenza_B' THEN Number_Positive 
            ELSE 0 
        END) AS Total_Influenza_B,
    
    SUM(CASE 
            WHEN Respiratory_Virus IN ('Influenza_A', 'Influenza_B') 
            THEN Number_Positive 
            ELSE 0 
        END) AS Total_Influenza_Cases

FROM clinical_lab
GROUP BY season, region
ORDER BY season, region;