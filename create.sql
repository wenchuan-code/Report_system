-- Create table interviews
CREATE TABLE interviews
(
  id              NUMBER(28) not null primary key,
  name            VARCHAR2(20),
  HR              VARCHAR2(20),
  test            VARCHAR2(20),
  Retest          VARCHAR2(20),
  results         VARCHAR2(20),
  reason          VARCHAR2(50),
  format          VARCHAR2(20),
  TEL             NUMBER(20),
  city            VARCHAR2(20),
  pos             VARCHAR2(20),
  "date"          DATE,
  time            DATE,
  recom           VARCHAR2(20),
  r_salary        VARCHAR2(20),
  r_MinSalary     VARCHAR2(20),
  r_date          VARCHAR2(20),
  r_other         VARCHAR2(50),
  base_sex        VARCHAR2(10),
  base_edu        VARCHAR2(20),
  base_eduy       VARCHAR2(20),
  base_major      VARCHAR2(20),
  base_graduated  VARCHAR2(20),         
  base_quit       VARCHAR2(20),
  base_reason     VARCHAR2(20),
  base_addree     VARCHAR2(50),
  cc_thinking     VARCHAR2(20),
  cc_expression   VARCHAR2(20),
  cc_workyear     VARCHAR2(20),
  cc_domain       VARCHAR2(20),
  cc_technology   VARCHAR2(20),
  cc_manage       VARCHAR2(20),
  cc_other        CLOB,
  other           CLOB,
  create_user     VARCHAR2(20),
  create_time     DATE,
  update_user    VARCHAR2(20),
  update_time     DATE,
  deleted         INT
)
tablespace BJSXT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table
comment on table interviews
  is '2021�����Ա�-����-FC1-M01-03';
-- Add comments to the columns
comment on column interviews.id
  is '��������'; 
comment on column interviews.name
  is '����';
comment on column interviews.hr
  is '���Թ�';
comment on column interviews.test
  is '���Խ��';
comment on column interviews.retest
  is '���Խ��';
comment on column interviews.results
  is '¼ȡ���';
comment on column interviews.reason
  is '��ͨ��ԭ��';
comment on column interviews.format
  is '��ʽ:��Ѷ���顢΢�����ԡ��ֳ����Ժ͵绰����';
comment on column interviews.tel
  is '��ϵ��ʽ';
comment on column interviews.city
  is '�ص�';
comment on column interviews.pos
  is '��λ';
comment on column interviews."date"
  is '����';
comment on column interviews.time
  is 'ʱ��';
comment on column interviews.recom
  is '�Ƽ���';
comment on column interviews.r_salary
  is '��ְ���-����н��';
comment on column interviews.r_minsalary
  is '��ְ���-���н��';
comment on column interviews.r_date
  is '��ְ���-����ʱ��';
comment on column interviews.r_other
  is '��ְ���-����Ҫ��';
comment on column interviews.base_sex
  is '�������-�Ա�';
comment on column interviews.base_edu
  is '�������-ѧ��';
comment on column interviews.base_eduy
  is '�������-ѧ����֤';
comment on column interviews.base_major
  is '�������-רҵ';
comment on column interviews.base_graduated
  is '�������-��ҵ����';
comment on column interviews.base_quit
  is '�������-�Ƿ���ְ';
comment on column interviews.base_reason
  is '�������-��ְԭ��';
comment on column interviews.base_addree
  is '�������-��ַ';
comment on column interviews.cc_thinking
  is '�ۺ�����-˼·';
comment on column interviews.cc_expression
  is '�ۺ�����-���';
comment on column interviews.cc_workyear
  is '�ۺ�����-��������';
comment on column interviews.cc_domain
  is '�ۺ�����-ҵ������';
comment on column interviews.cc_technology
  is '�ۺ�����-����ˮƽ';
comment on column interviews.cc_manage
  is '�ۺ�����-��������';
comment on column interviews.cc_other
  is '�ۺ�����-��ע';
comment on column interviews.other
  is '����-��ע';
comment on column interviews.create_user
  is '������';
comment on column interviews.create_time
  is '����ʱ��';
comment on column interviews.update_user
  is '������';
comment on column interviews.update_time
  is '����ʱ��';
comment on column interviews.deleted
  is 'ɾ����ʶ��0-δɾ����1-��ɾ��';

-- Create table TotalDemand
CREATE TABLE TotalDemand
(
  id            NUMBER(28) not null primary key,
  customer      VARCHAR2(20),
  head          VARCHAR2(20),
  position      VARCHAR2(20),
  demand_level  VARCHAR2(20),
  pos_level     VARCHAR2(20),
  demand_num    INT,
  city          VARCHAR2(20),
  "date"        DATE,
  state         VARCHAR2(20),
  addree        VARCHAR2(50),
  create_user   VARCHAR2(20),
  create_time   DATE,
  update_user   VARCHAR2(20),
  update_time   DATE,
  deleted       INT
)
tablespace BJSXT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
-- Add comments to table
comment on table TotalDemand
  is '2021����Ա�����-FC1@20210331-����һ����';
-- Add comments to columns
comment on column TotalDemand.id
  is '��������';
comment on column TotalDemand.customer
  is '�ͻ�����';
comment on column TotalDemand.head
  is '������';
comment on column TotalDemand.position
  is '������λ';
comment on column TotalDemand.demand_level
  is '����ȼ�';
comment on column TotalDemand.pos_level
  is '��λ����';
comment on column TotalDemand.demand_num
  is '��������';
comment on column TotalDemand.city
  is '��������';
comment on column TotalDemand."date"
  is '��������';
comment on column TotalDemand.state
  is '״̬';
comment on column TotalDemand.addree
  is '�����ַ';
comment on column TotalDemand.create_user
  is '������';
comment on column TotalDemand.create_time
  is '����ʱ��';
comment on column TotalDemand.update_user
  is '������';
comment on column TotalDemand.update_time
  is '����ʱ��';
comment on column TotalDemand.deleted
  is 'ɾ����ʶ��0-δɾ����1-��ɾ��';


-- Create table Demand
CREATE TABLE Demand
(
  id            NUMBER(28) not null primary key,
  customer      VARCHAR2(20),
  pos_name      VARCHAR2(20),
  pos_level     VARCHAR2(20),
  pos_duty      CLOB,
  pos_desc      CLOB,
  create_user   VARCHAR2(20),
  create_time   DATE,
  update_user   VARCHAR2(20),
  update_time   DATE,
  deleted       INT
)
tablespace BJSXT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
-- Add comments to table 
comment on table Demand
  is '2021����Ա�����-FC1@20210331-������˾����';
-- Add comments to columns
comment on column Demand.id
  is '��������';
comment on column Demand.customer
  is '�ͻ�����';
comment on column Demand.pos_name
  is '��λ����';
comment on column Demand.pos_level
  is '����';
comment on column Demand.pos_duty
  is '��λְ��';
comment on column Demand.pos_desc
  is '��λҪ������';
comment on column Demand.create_user
  is '������';
comment on column Demand.create_time
  is '����ʱ��';
comment on column Demand.update_user
  is '������';
comment on column Demand.update_time
  is '����ʱ��';
comment on column Demand.deleted
  is 'ɾ����ʶ��0-δɾ����1-��ɾ��';
