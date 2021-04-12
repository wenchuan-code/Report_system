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
  is '2021年面试表-重庆-FC1-M01-03';
-- Add comments to the columns
comment on column interviews.id
  is '自增主键'; 
comment on column interviews.name
  is '姓名';
comment on column interviews.hr
  is '面试官';
comment on column interviews.test
  is '初试结果';
comment on column interviews.retest
  is '复试结果';
comment on column interviews.results
  is '录取结果';
comment on column interviews.reason
  is '不通过原因';
comment on column interviews.format
  is '形式:腾讯会议、微信面试、现场面试和电话面试';
comment on column interviews.tel
  is '联系方式';
comment on column interviews.city
  is '地点';
comment on column interviews.pos
  is '岗位';
comment on column interviews."date"
  is '日期';
comment on column interviews.time
  is '时间';
comment on column interviews.recom
  is '推荐人';
comment on column interviews.r_salary
  is '入职相关-期望薪资';
comment on column interviews.r_minsalary
  is '入职相关-最低薪资';
comment on column interviews.r_date
  is '入职相关-到岗时间';
comment on column interviews.r_other
  is '入职相关-其他要求';
comment on column interviews.base_sex
  is '基本情况-性别';
comment on column interviews.base_edu
  is '基本情况-学历';
comment on column interviews.base_eduy
  is '基本情况-学历验证';
comment on column interviews.base_major
  is '基本情况-专业';
comment on column interviews.base_graduated
  is '基本情况-毕业年限';
comment on column interviews.base_quit
  is '基本情况-是否离职';
comment on column interviews.base_reason
  is '基本情况-离职原因';
comment on column interviews.base_addree
  is '基本情况-地址';
comment on column interviews.cc_thinking
  is '综合能力-思路';
comment on column interviews.cc_expression
  is '综合能力-表达';
comment on column interviews.cc_workyear
  is '综合能力-工作年限';
comment on column interviews.cc_domain
  is '综合能力-业务领域';
comment on column interviews.cc_technology
  is '综合能力-技术水平';
comment on column interviews.cc_manage
  is '综合能力-管理能力';
comment on column interviews.cc_other
  is '综合能力-备注';
comment on column interviews.other
  is '其他-备注';
comment on column interviews.create_user
  is '创建人';
comment on column interviews.create_time
  is '创建时间';
comment on column interviews.update_user
  is '更新人';
comment on column interviews.update_time
  is '更新时间';
comment on column interviews.deleted
  is '删除标识：0-未删除，1-已删除';

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
  is '2021年人员需求表-FC1@20210331-需求一览表';
-- Add comments to columns
comment on column TotalDemand.id
  is '自增主键';
comment on column TotalDemand.customer
  is '客户名称';
comment on column TotalDemand.head
  is '负责人';
comment on column TotalDemand.position
  is '技术岗位';
comment on column TotalDemand.demand_level
  is '需求等级';
comment on column TotalDemand.pos_level
  is '岗位级别';
comment on column TotalDemand.demand_num
  is '需求人数';
comment on column TotalDemand.city
  is '工作城市';
comment on column TotalDemand."date"
  is '发布日期';
comment on column TotalDemand.state
  is '状态';
comment on column TotalDemand.addree
  is '服务地址';
comment on column TotalDemand.create_user
  is '创建人';
comment on column TotalDemand.create_time
  is '创建时间';
comment on column TotalDemand.update_user
  is '更新人';
comment on column TotalDemand.update_time
  is '更新时间';
comment on column TotalDemand.deleted
  is '删除标识：0-未删除，1-已删除';


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
  is '2021年人员需求表-FC1@20210331-各个公司需求';
-- Add comments to columns
comment on column Demand.id
  is '自增主键';
comment on column Demand.customer
  is '客户名称';
comment on column Demand.pos_name
  is '岗位名称';
comment on column Demand.pos_level
  is '级别';
comment on column Demand.pos_duty
  is '岗位职责';
comment on column Demand.pos_desc
  is '岗位要求描述';
comment on column Demand.create_user
  is '创建人';
comment on column Demand.create_time
  is '创建时间';
comment on column Demand.update_user
  is '更新人';
comment on column Demand.update_time
  is '更新时间';
comment on column Demand.deleted
  is '删除标识：0-未删除，1-已删除';
