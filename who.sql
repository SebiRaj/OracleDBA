set lines 200
set pages 2000
set serveroutput on
set long 9999
--set timing on
set time on
set echo on
show user
--set define off

col instance_name new_value vdbname
col upper(host_name) new_value vmachine
col user new_value vuser

-- Set the sql prompt
select user,upper(host_name),instance_name from v$instance;
--set sqlprompt '&vuser@&vmachine._&vdbname:SQL> '


select name,open_mode from v$database;
select instance_name,host_name,startup_time from gv$instance;

show user;