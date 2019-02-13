col HOST_NAME for a30
col INSTANCE_NAME for a30
set lines 200 pages 2000 long 9999

select name,open_mode,log_mode from V$database;

select instance_name,host_name, DATABASE_STATUS from  gv$instance;

select instance_name,host_name,to_char(startup_time,'MONTH DD, YYYY, HH24:MI:SS') from gv$instance;

select dbid, con_id, name, OPEN_MODE,to_char(OPEN_TIME,'MONTH DD, YYYY, HH24:MI:SS') from v$pdbs;

select upper(sys_context ('userenv', 'con_name') || '@' || sys_context('userenv', 'db_name')) global_name from dual;
