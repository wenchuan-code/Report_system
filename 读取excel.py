from sqlalchemy.dialects.oracle import \
    BFILE, BLOB, CHAR, CLOB, DATE, \
    DOUBLE_PRECISION, FLOAT, INTERVAL, LONG, NCLOB, \
    NUMBER, NVARCHAR, NVARCHAR2, RAW, TIMESTAMP, VARCHAR, \
    VARCHAR2
from sqlalchemy import types, create_engine

def mapping_df_types(df):
    dtypedict = {}
    for i, j in zip(df.columns, df.dtypes):
        if "object" in str(j):
            dtypedict.update({i: VARCHAR(256)})
        if "float" in str(j):
            dtypedict.update({i: NUMBER(19, 8)})
        if "int" in str(j):
            dtypedict.update({i: VARCHAR(19)})
    return dtypedict


def put_df_toOracle(df_data, tableName, addres):
    engine = create_engine(addres, encoding='utf-8', echo=True)
    dtypedict = mapping_df_types(df_data)
    df_data.to_sql(tableName, engine, index=False, if_exists='append', \
               dtype=dtypedict, chunksize=None)
# ------------------------------

if __name__ == '__main__':
    df_data = ''
    tableName = '你想写入的库表'
    addres = "oracle://用户名:密码@ip地址/实例名"
    put_df_toOracle(df_data, tableName, addres)
