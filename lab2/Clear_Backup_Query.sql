use msdb;


EXEC msdb.dbo.sp_add_job  
   @job_name = N'Clear_Backup_Job',   
   @enabled = 1,   
   @description = N'Procedure execution every month' ; 

 EXEC msdb.dbo.sp_add_jobstep  
    @job_name = N'Clear_Backup_Job',   
    @step_name = N'Run Procedure',   
    @subsystem = N'TSQL',   
    @command = 'EXEC sp_delete_backuphistory @oldest_date = N''21/7/2020'';';

 EXEC msdb.dbo.sp_add_schedule  
    @schedule_name = N'Clear_Backup_Schedule',   
    @freq_type = 32,  -- execute every month
    @freq_interval = 1, -- every sunday
    @freq_relative_interval = 1,
    @freq_recurrence_factor = 1,
    @active_start_time = '000000' ;   -- start time 00:00:00

 EXEC msdb.dbo.sp_attach_schedule  
   @job_name = N'Clear_Backup_Job',  
   @schedule_name = N'Clear_Backup_Schedule' ;

 EXEC msdb.dbo.sp_add_jobserver  
   @job_name = N'Clear_Backup_Job',  
   @server_name = @@servername ;
