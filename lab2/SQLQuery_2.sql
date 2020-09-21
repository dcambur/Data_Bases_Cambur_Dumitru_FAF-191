use msdb;


EXEC msdb.dbo.sp_add_job  
   @job_name = N'Rebuild_Index_Job',   
   @enabled = 1,   
   @description = N'Procedure execution every week' ; 

 EXEC msdb.dbo.sp_add_jobstep  
    @job_name = N'Rebuild_Index_Job',   
    @step_name = N'Run Procedure',   
    @subsystem = N'TSQL',   
    @command = 'ALTER INDEX ALL ON Tables REBUILD WITH (FILLFACTOR = 90, SORT_IN_TEMPDB = ON, STATISTICS_NORECOMPUTE = ON);';

 EXEC msdb.dbo.sp_add_schedule  
    @schedule_name = N'Rebuild_Index_Schedule',   
    @freq_type = 1,  -- execute once
    @freq_recurrence_factor = 1,
    @active_start_time = '000000' ;   -- start time 00:00:00

 EXEC msdb.dbo.sp_attach_schedule  
   @job_name = N'Rebuild_Index_Job',  
   @schedule_name = N'Rebuild_Index_Schedule' ;

 EXEC msdb.dbo.sp_add_jobserver  
   @job_name = N'Rebuild_Index_Job',  
   @server_name = @@servername ;
