'''
Created on 2021年5月12日

@author: liwang
'''
import sqlite3

con  = sqlite3.connect('./sqlitedemo.db')

cur = con.cursor()

sql = 'select * from t_person'

try:
    cur.execute(sql)
    person_all = cur.fetchall()
    for person in person_all:
        print(person)
except Exception as e:
    print(e)
finally:
    cur.close()
    con.close()