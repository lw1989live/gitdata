'''
Created on 2021年5月12日

@author: liwang
'''
import pymysql

db = pymysql.connect(host='localhost',user='admin',password='No.3@1989',database='python_db',port=3306)

cur = db.cursor()

sql = 'insert into t_student(sname,age,score) values(%s,%s,%s)'

try:
    cur.execute(sql,('李旺',31,99.0))
    db.commit()
    print("mysql数据插入成功")
except Exception as e:
    print(e)
    db.rollback()
finally:
    cur.close()
    db.close()

