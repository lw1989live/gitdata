'''
Created on 2021年5月12日

@author: liwang
'''
import pymysql

conn = pymysql.connect(host='localhost',user='admin',password='No.3@1989',database='python_db',port=3306)

cur = conn.cursor()

sql = """
create table t_student(
sno int primary key auto_increment, 
sname varchar(30) not null, 
age int(2), 
score float(3,1))
"""
try:
    cur.execute(sql)
    print("学生表创建成功")
except Exception as e:
    print(e)
finally:
    cur.close()
    conn.close()

