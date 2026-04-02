SELECT 
    season,
    region,
    CASE 
        WHEN Percent_ILI >= 7 THEN 'High'
        WHEN Percent_ILI BETWEEN 4 AND 6.99 THEN 'Moderate'
        ELSE 'Low'
    END AS ILI_Trend,
    COUNT(*) AS Trend_Count
FROM fluili
GROUP BY 
    season,
    region,
    CASE 
        WHEN Percent_ILI >= 7 THEN 'High'
        WHEN Percent_ILI BETWEEN 4 AND 6.99 THEN 'Moderate'
        ELSE 'Low'
    END;