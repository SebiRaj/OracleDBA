set lines 200
set pages 9999
col username for a20
col account_status for a20
col profile for a30

select username,account_status,profile,created,DEFAULT_TABLESPACE,expiry_date,lock_date, LAST_LOGIN from dba_users where username like upper('%&username%');