


    SELECT      sys.databases.name,  
                SUM(size)/128 AS [Total disk space MB] 
    FROM        sys.databases
    JOIN        sys.master_files  
    ON          sys.databases.database_id=sys.master_files.database_id  
    GROUP BY    sys.databases.name  
    ORDER BY    sys.databases.name  
    