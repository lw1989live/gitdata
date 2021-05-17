'''
Created on 2021年5月12日

@author: liwang
'''
import pymysql

db = pymysql.connect(host='localhost',user='admin',password='No.3@1989',database='python_db',port=3306)

cur = db.cursor()

sql = 'delete from t_student where sno=%s'

try:
    cur.execute(sql,(5))
    db.commit()
    print("mysql数据修改成功")
except Exception as e:
    print(e)
    db.rollback()
finally:
    cur.close()
    db.close()

