'''
Created on 2021年5月12日

@author: liwang
'''
import sqlite3

con  = sqlite3.connect('./sqlitedemo.db')

cur = con.cursor()

sql = 'delete from t_person where pno=?'

try:
    cur.execute(sql,(4,))
    con.commit()
    print("删除成功")
except Exception as e:
    print(e)
    con.rollback()
finally:
    cur.close()
    con.close()