import cx_Oracle
import datetime

seq_demand = 'seq_demand.nextval'

dataToInsert = [
    (seq_demand, '通用岗位','java开发工程师','资深',),
    (seq_demand, 'Parent 20',1)
]
conn = cx_Oracle.connect('c##bjsxt11/123456@127.0.0.1/orcl')   #用自己的实际数据库用户名、密码、主机ip地址 替换即可
curs=conn.cursor()
# sql='SELECT * FROM books' #sql语句
# sql = "insert into books values(1059830001, 'BODYBUILD IN 10 MINUTES A DAY', to_date('21-1-01','YY-MM-DD'), 4, '18.75', 30.95, 'FITNESS');"
rr=curs.executemany("insert into demand values(:1,:2,:3)", dataToInsert)
conn.commit()
# row=curs.fetchone()
# print(row)
curs.close()
conn.close()


