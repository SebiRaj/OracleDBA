set lines 200
set pages 2000
col owner for a25
col username for a25
col db_link for a35
col host for a35
SELECT b.name , a.* 
FROM 
	DBA_DB_links a, v$database b
;

set serveroutput on size 1000000 long 1000000
col z format a400
SELECT dbms_metadata.get_ddl('DB_LINK',DB_LINK,OWNER) z FROM DBA_DB_LINKS
/


select 'create public database link '||name|| ' connect to '|| userid|| ' identified by values'|| passwordx|| ' using '|| host|| ';' from link$;