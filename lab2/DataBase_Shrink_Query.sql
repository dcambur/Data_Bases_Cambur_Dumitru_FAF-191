use msdb;


EXEC msdb.dbo.sp_add_job  
   @job_name = N'FridayJob',   
   @enabled = 1,   
   @description = N'Procedure execution every week' ; 

 EXEC msdb.dbo.sp_add_jobstep  
    @job_name = N'FridayJob',   
    @step_name = N'Run Procedure',   
    @subsystem = N'TSQL',   
    @command = 'DBCC SHRINKDATABASE (DimaLab1, 10);  ';

 EXEC msdb.dbo.sp_add_schedule  
    @schedule_name = N'Friday Schedule',   
    @freq_type = 8,  -- every week with custom day choosing start
    @freq_interval = 32, -- every friday
    @freq_recurrence_factor = 1,
    @active_start_time = '000000' ;   -- start time 00:00:00

 EXEC msdb.dbo.sp_attach_schedule  
   @job_name = N'FridayJob',  
   @schedule_name = N'Friday Schedule' ;

 EXEC msdb.dbo.sp_add_jobserver  
   @job_name = N'FridayJob',  
   @server_name = @@servername ;