'''
Created on 2021年5月12日

@author: liwang
'''
import sqlite3

con  = sqlite3.connect('./sqlitedemo.db')

cur = con.cursor()

sql = 'update t_person set pname=? where pno=?'

try:
    cur.execute(sql,('李旺2',2))
    con.commit()
    print("修改成功")
except Exception as e:
    print(e)
    con.rollback()
finally:
    cur.close()
    con.close()