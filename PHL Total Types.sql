SELECT 
    season,
    region,

    SUM(CASE WHEN Influenza_Category = 'Influenza_A' THEN Count ELSE 0 END) AS Influenza_A,
    SUM(CASE WHEN Influenza_Category = 'Influenza_AH3' THEN Count ELSE 0 END) AS Influenza_AH3,
    SUM(CASE WHEN Influenza_Category = 'Influenza_AH1' THEN Count ELSE 0 END) AS Influenza_AH1,
    SUM(CASE WHEN Influenza_Category = 'Influenza_AH1pdm09' THEN Count ELSE 0 END) AS Influenza_AH1pdm09,
    SUM(CASE WHEN Influenza_Category = 'Influenza_ANotSubtyped' THEN Count ELSE 0 END) AS Influenza_ANotSubtyped,
    SUM(CASE WHEN Influenza_Category = 'Influenza_B' THEN Count ELSE 0 END) AS Influenza_B,
    SUM(CASE WHEN Influenza_Category = 'Influenza_Total' THEN Count ELSE 0 END) AS Influenza_Total,
    SUM(CASE WHEN Influenza_Category = 'Influenza_Tested' THEN Count ELSE 0 END) AS Influenza_Tested

FROM public_health_lab
GROUP BY 
    season,
    region
ORDER BY 
    season,
    region;