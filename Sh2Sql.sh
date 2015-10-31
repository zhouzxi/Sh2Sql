#!/bin/bash
 
function Init()
{
    if [ -f"example.sql" ]
    then
        echo"example.sql is exits and is deleting it,then recreate it"
        rm -fexample.sql
    else
        echo"example.sql no exits and is creating it"
    fi
    echo " usezxdbp_166 ">>example.sql
    echo " go">>example.sql
}
 
function CreateTable()
{
    cat>>example.sql<< EOF
 
    create table tb_employeeinfo
    (
        employeeno      varchar(20)      not null,      -- 员工工号
        employeename    varchar(20)      not null,      -- 员工姓名
        employeeage     int                  null       -- 员工年龄
    );
    create unique index idx1_tb_employeeinfo ontb_employeeinfo(employeeno);
    create index idx2_tb_employeeinfo ontb_employeeinfo(employeename);
      
    print 'create table tb_employeeinfo ok'
    go
 
 
    EOF
}
 
## Execute function
Init
CreateTable
