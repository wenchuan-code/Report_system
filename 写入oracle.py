from flask import Flask
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)
# app的配置  chj：账号  123456：密码   ORCL：链接的数据库
app.config['SQLALCHEMY_DATABASE_URI'] = 'oracle://chj:123456@127.0.0.1:1521/ORCL'
db = SQLAlchemy(app)


# 继承db.Model代表一个数据库模型
class Case(db.Model):
    # 定义表名：__tablename__
    __tablename__ = 'cases'
    # 定义字段：db.Column
    ID = db.Column(db.Integer, primary_key=True)  # 主键
    casename = db.Column(db.String(50), unique=True)  # 唯一
    host = db.Column(db.String(50))
    path = db.Column(db.String(100))
    method = db.Column(db.String(10))
    subject = db.Column(db.String(50))
    param = db.Column(db.String(500))
    reletion = db.Column(db.String(50))
    asserts = db.Column(db.String(50))


if __name__ == '__main__':
    db.create_all()  # 创建表
    # # 增加数据 1.
    # role = Role(name = 'admin') # Role表添加一条数据
    # db.session.add(role) # 添加到db.session
    # db.session.commit() # 增删改都要提交语句，才会执行
    # # 增加数据 2.
    # user = User(name = 'chj', role_id = role.id)
    # db.session.add(role) # 添加到db.session
    # db.session.commit() # 增删改都要提交语句，才会执行
    # # 修改数据
    # user.name = 'baba'
    # db.session.commit()
    # # 删除数据
    # db.session.delete(user)
    # db.session.commit()

    # query:查询
    User.query.all()
    User.query.count()
    User.query.first()
    User.query.get(4)
    User.query.filter.by(id=4).first()  # 属性 =
    User.query.filter(User.id == 4).first()  # 对象名。属性==
    app.run(debug=True)
