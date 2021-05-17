'''
Created on 2021年5月12日

@author: liwang
'''
import sqlite3

con = sqlite3.connect('./sqlitedemo.db')

cur= con.cursor()

sql = 'create table t_person(pno INTEGER primary key autoincrement,pname VARCHAR not null,age INTEGER)'

try:
    cur.execute(sql)
    print("成功")
except Exception as e:
    print(e)
finally:
    cur.close()
    con.close()
