'''
Created on 2021年5月12日

@author: liwang
'''
import sqlite3

con = sqlite3.connect('sqlitedemo.db')

cur = con.cursor()

sql = 'insert into t_person(pname,age) values(?,?)'

try:
    cur.execute(sql,('李旺',33))
    con.commit()
    print("数据插入成功")
except Exception as e:
    print(e)
    con.rollback()
finally:
    cur.close()
    con.close()
