'''
Created on 2021年5月12日

@author: liwang
'''
import pymysql

db = pymysql.connect(host='localhost',user='admin',password='No.3@1989',database='python_db',port=3306)

cur = db.cursor()

sql = 'insert into t_student(sname,age,score) values(%s,%s,%s)'

try:
    cur.executemany(sql,[('李旺2',32,92.0),('李旺3',33,93),('李旺4',34,94),('李旺5',35,95)])
    db.commit()
    print("mysql数据插入成功")
except Exception as e:
    print(e)
    db.rollback()
finally:
    cur.close()
    db.close()

