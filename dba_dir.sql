set lines 200
set pages 2000
col DIRECTORY_PATH for a60
set define off
 col owner for a20
 col DIRECTORY_NAME for a30
select * from dba_directories;