'''
Created on 2021年5月12日

@author: liwang
'''
import pymysql

db = pymysql.connect(host='localhost',user='admin',password='No.3@1989',database='python_db',port=3306)

cur = db.cursor()

sql = 'select * from t_student'

try:
    cur.execute(sql)
    stu = cur.fetchone()
    print(stu)
except Exception as e:
    print(e)
finally:
    cur.close()
    db.close()

