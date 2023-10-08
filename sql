SELECT
    t1.Media_source,
    t1.Campaign_ID,
    SUM(t1.Spend + t2.Spend) AS Total_Spend,
    SUM(t1.Clicks + t2.Clicks) AS Total_Clicks,
    SUM(t1.Impressions + t2.Impressions) AS Total_Impressions,
    SUM(t1.Installs + t2.Installs) AS Total_Installs,
    SUM(t1.Events + t2.Events) AS Total_Events
FROM
    table1 t1
JOIN
    table2 t2 ON t1.Media_source = t2.Media_source AND t1.Campaign_ID = t2.Campaign_ID
GROUP BY
    t1.Media_source, t1.Campaign_ID;
