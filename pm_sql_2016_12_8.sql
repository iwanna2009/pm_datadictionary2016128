/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2016/12/8 15:18:22                           */
/*==============================================================*/


/*==============================================================*/
/* Table: pm_addressbook                                        */
/*==============================================================*/
create table pm_addressbook
(
   pc_addressbook_id    bigint(20) not null auto_increment,
   enterprisenumber     varchar(30) not null,
   communityInformationid bigint(20) not null,
   username             varchar(6) not null,
   Gender               varchar(2),
   mobilephone          varchar(20),
   telephone            varchar(20),
   qq                   varchar(11),
   address              varchar(50),
   idcard_number        varchar(18),
   remark               varchar(200),
   administrativeOffice_id bigint(20),
   customcategories_id  bigint(10),
   position             varchar(20),
   nation               varchar(20),
   birthday             datetime,
   email                varchar(30),
   workunit             varchar(50),
   create_time          datetime not null,
   createuserid         bigint(20) not null,
   createusername       varchar(20) not null,
   primary key (pc_addressbook_id)
);

/*==============================================================*/
/* Table: pm_base_button                                        */
/*==============================================================*/
create table pm_base_button
(
   button_id            int not null auto_increment,
   button_name          varchar(20) not null,
   button_img           varchar(50) not null,
   button_code          varchar(100) not null,
   SortCode             bigint(10) not null,
   button_type          varchar(50) not null,
   button_remak         varchar(150),
   deletemark           bigint(2) default 1,
   menu_state           bigint(2) default 1,
   create_time          datetime,
   createuserid         bigint(20) not null,
   createusername       varchar(20) not null,
   modifydate           datetime not null,
   modifyuserid         bigint(20) not null,
   modifyusername       varchar(20) not null,
   primary key (button_id)
);

/*==============================================================*/
/* Table: pm_base_userright                                     */
/*==============================================================*/
create table pm_base_userright
(
   userright_id         bigint(20) not null auto_increment,
   user_id              bigint(20) not null,
   menu_id              bigint(20) not null,
   enterprisenumber     varchar(30) not null,
   companyid            bigint(20) not null,
   departmentid         bigint(20) not null,
   create_time          datetime,
   createuserid         bigint(20) not null,
   createusername       varchar(20) not null,
   primary key (userright_id)
);

/*==============================================================*/
/* Table: pm_breakdown_cost                                     */
/*==============================================================*/
create table pm_breakdown_cost
(
   cost_id              bigint(20) not null auto_increment,
   breakdown_id         bigint(20) not null,
   cost_material        bigint(20) not null,
   cost_material_num    bigint(5) not null,
   cost_material_unit   varchar(5) not null,
   unit_price           decimal(16,4) not null,
   stock_money          decimal(16,4) not null,
   prime_cost           decimal(16,4) not null,
   summation            decimal(16,4) not null,
   cost_detail          varchar(100),
   create_time          datetime not null,
   primary key (cost_id)
);

/*==============================================================*/
/* Table: pm_breakdown_operation                                */
/*==============================================================*/
create table pm_breakdown_operation
(
   operation_id         bigint(20) not null auto_increment,
   breakdown_id         bigint(20) not null,
   user_id              bigint(20) not null,
   user_id_type         varchar(1) not null,
   operation_result     varchar(2) not null,
   operation_text       varchar(100),
   operation_time       varchar(20),
   operation_days       bigint(10) not null,
   customersatisfaction tinyint,
   operationmission_text varchar(200) not null,
   begin_time           datetime not null,
   end_time             datetime not null,
   primary key (operation_id)
);

/*==============================================================*/
/* Table: pm_breakdown_work                                     */
/*==============================================================*/
create table pm_breakdown_work
(
   worker_id            bigint(20) not null auto_increment,
   breakdown_id         bigint(20),
   user_id              bigint(20),
   work_type            varchar(1) not null,
   create_time          date,
   primary key (worker_id)
);

/*==============================================================*/
/* Table: pm_building                                           */
/*==============================================================*/
create table pm_building
(
   id                   bigint(20) not null auto_increment,
   communityInformationid bigint(20) not null,
   buildingcode         varchar(20) not null,
   buildingname         varchar(20) not null,
   buildingaddress      varchar(50),
   buildingtype         bigint(10) not null,
   buildingstructure    bigint(10) not null,
   buildingorientation  varchar(20),
   remark               varchar(100),
   primary key (id)
);

/*==============================================================*/
/* Table: pm_city_code                                          */
/*==============================================================*/
create table pm_city_code
(
   code_id              varchar(10) not null,
   code_id_up           varchar(10) not null,
   code_name            varchar(30) not null,
   code_level           varchar(1) not null,
   create_time          datetime,
   createuserid         bigint(20) not null,
   createusername       varchar(20) not null,
   primary key (code_id)
);

/*==============================================================*/
/* Table: pm_communityInformation                               */
/*==============================================================*/
create table pm_communityInformation
(
   id                   bigint(20) not null auto_increment,
   enterprisenumber     varchar(30) not null,
   number               varchar(20) not null,
   communityname        varchar(20),
   address              varchar(50),
   personincharge       varchar(10),
   personincontact      varchar(10),
   telephone            varchar(20),
   numberofmultistoreybuildings bigint(10),
   numberofhighrisebuildings bigint(10),
   builtuparea          decimal(12,4),
   areaofpublicplaces   decimal(12,4),
   afforestedarea       decimal(12,4),
   roadarea             decimal(12,4),
   designofparkingarea  decimal(12,4),
   areacovered          decimal(12,4),
   garagearea           decimal(12,4),
   carnumber            bigint(10),
   remark               varchar(200),
   create_time          datetime not null,
   createuserid         bigint(20) not null,
   createusername       varchar(20) not null,
   primary key (id)
);

/*==============================================================*/
/* Table: pm_customcategorysettings                             */
/*==============================================================*/
create table pm_customcategorysettings
(
   id                   bigint(20) not null auto_increment,
   enterprisenumber     varchar(30) not null,
   categoryname         varchar(20) not null,
   parentid             bigint(20),
   ordernumber          varchar(10),
   whetherbuiltinidentification bigint(2) default 0,
   primary key (id)
);

/*==============================================================*/
/* Table: pm_customereventmanagement                            */
/*==============================================================*/
create table pm_customereventmanagement
(
   id                   bigint(20) not null auto_increment,
   communityInformationid bigint(20) not null,
   roomid               bigint(20) not null,
   dateofoccurrence     datetime not null,
   contentinfo          varchar(150) not null,
   importantlevel       bigint(10) not null,
   category             varchar(20),
   remark               varchar(100),
   primary key (id)
);

/*==============================================================*/
/* Table: pm_customeroutmoverecord                              */
/*==============================================================*/
create table pm_customeroutmoverecord
(
   id                   bigint(20) not null auto_increment,
   enterprisenumber     varchar(30) not null,
   communityInformationid bigint(20) not null,
   roomid               bigint(20) not null,
   roomcode             varchar(20),
   customername         varchar(10),
   chargeserviceobject  bigint(10),
   dateoflastimmigration datetime,
   outchargeserviceobject bigint(10),
   moveoutdate          datetime,
   outroomstate         bigint(10),
   remark               varchar(50),
   autoclearflag        bigint(10) default 0,
   create_time          datetime,
   createuserid         bigint(20) not null,
   createusername       varchar(20) not null,
   moveoutstate         bigint(10),
   primary key (id)
);

/*==============================================================*/
/* Table: pm_customsubitem                                      */
/*==============================================================*/
create table pm_customsubitem
(
   id                   bigint(20) not null auto_increment,
   keyvalues            varchar(20) not null,
   ordernumber          varchar(10) not null,
   whetherbuiltinidentification bigint(2) default 0,
   primary key (id)
);

/*==============================================================*/
/* Table: pm_employeefileregistration                           */
/*==============================================================*/
create table pm_employeefileregistration
(
   id                   bigint(20) not null auto_increment,
   enterprisenumber     varchar(30) not null,
   organizationregistrationid bigint(20),
   employeestatus       bigint(10) not null,
   staffcode            varchar(20) not null,
   whetheronthejob      bigint(10) not null,
   name                 varchar(10) not null,
   gender               bigint(10),
   birthday             datetime not null,
   entrytime            datetime not null,
   education            bigint(10),
   idnumber             varchar(20),
   job                  varchar(10),
   jobnumber            varchar(20),
   contractstartdate    datetime,
   contractenddate      datertime,
   mobilephone          varchar(15),
   telephone            varchar(20),
   address              varchar(100),
   placeoforigin        varchar(20),
   height               varchar(10),
   weight               varchar(10),
   major                varchar(10),
   basepay              varchar(10),
   email                varchar(15),
   qq                   varchar(19),
   skilllevel           varchar(10),
   politicallandscape   varchar(10),
   hobby                varchar(10),
   workexperience       varchar(20),
   bankaccount          varchar(30),
   bank                 varchar(30),
   departuretime        datetime,
   remark               varchar(100),
   create_time          datetime,
   createuserid         bigint(20) not null,
   createusername       varchar(20) not null,
   primary key (id)
);

/*==============================================================*/
/* Table: pm_employeetrainingrecord                             */
/*==============================================================*/
create table pm_employeetrainingrecord
(
   id                   bigint(20) not null auto_increment,
   enterprisenumber     varchar(30) not null,
   organizationregistrationid bigint(20),
   employeefileregistrationid bigint(20) not null,
   watercode            varchar(50) not null,
   trainingcontent      varchar(100) not null,
   trainingtime         datetime not null,
   remark               varchar(100),
   auditstatus          bigint(2) default 0,
   primary key (id)
);

/*==============================================================*/
/* Table: pm_listofrewardsandpunishments                        */
/*==============================================================*/
create table pm_listofrewardsandpunishments
(
   id                   bigint(20) not null auto_increment,
   enterprisenumber     varchar(30) not null,
   organizationregistrationid bigint(20),
   employeeid           bigint(20) not null,
   watercode            varchar(50) not null,
   ewardsandpunishments varchar(100) not null,
   rewardandpunishmentcategory varchar(20) not null,
   remark               varchar(100),
   create_time          datetime,
   createuserid         bigint(20) not null,
   CreateUserName       varchar(20) not null,
   auditperson          varchar(20) not null,
   auditstatus          bigint(2) default 0,
   primary key (id)
);

/*==============================================================*/
/* Table: pm_loginaccountsettings                               */
/*==============================================================*/
create table pm_loginaccountsettings
(
   id                   bigint(20) not null auto_increment,
   account              varchar(10) not null,
   displayname          varchar(20) not null,
   pwd                  varchar(20) not null default '666666',
   enterprisenumber     varchar(30) not null,
   companyid            bigint(20) not null,
   departmentid         bigint(20) not null,
   userrole             bigint(20),
   telephone            varchar(20),
   state                varchar(1) not null default '1',
   communityInformation varchar(50),
   warehouseInformation varchar(50),
   remark               varchar(100),
   primary key (id)
);

/*==============================================================*/
/* Table: pm_loginroleinformationtable                          */
/*==============================================================*/
create table pm_loginroleinformationtable
(
   role_id              bigint(20) not null auto_increment,
   characterencoding    varchar(10) not null,
   rolename             varchar(10) not null,
   deletemark           bigint(2) default 1,
   remark               varchar(50),
   create_time          datetime,
   createuserid         bigint(20) not null,
   createusername       varchar(20) not null,
   modifydate           datetime not null,
   modifyuserid         bigint(20) not null,
   modifyusername       varchar(20) not null,
   primary key (role_id)
);

/*==============================================================*/
/* Table: pm_menu_action_power                                  */
/*==============================================================*/
create table pm_menu_action_power
(
   roleright_id         bigint(20) not null auto_increment,
   roles_id             bigint(20) not null,
   menu_id              varchar(6) not null,
   create_time          datetime,
   createuserid         bigint(20) not null,
   createusername       varchar(20) not null,
   primary key (roleright_id)
);

/*==============================================================*/
/* Table: pm_of_type                                            */
/*==============================================================*/
create table pm_of_type
(
   type_id              bigint(20) not null auto_increment,
   categoryname         varchar(30) not null,
   parentid             bigint(20),
   ordernumber          varchar(10),
   type_depict          varchar(300),
   type_state           varchar(1) not null,
   whetherbuiltinidentification bigint(2) default 0,
   create_time          datetime not null,
   createuserid         bigint(20) not null,
   createusername       varchar(20) not null,
   primary key (type_id)
);

/*==============================================================*/
/* Table: pm_parametertypedatasheet                             */
/*==============================================================*/
create table pm_parametertypedatasheet
(
   id                   bigint(20) not null auto_increment,
   pm_customcategorysettings_id bigint(20),
   keyvalues            varchar(20) not null,
   order_num            int,
   column_state         varchar(1),
   ordernumber          varchar(10) not null,
   whetherbuiltinidentification bigint(2) default 0,
   create_time          datetime,
   createuserid         bigint(20) not null,
   createusername       varchar(20) not null,
   primary key (id)
);

/*==============================================================*/
/* Table: pm_postchangeregistration                             */
/*==============================================================*/
create table pm_postchangeregistration
(
   id                   bigint(20) not null auto_increment,
   enterprisenumber     varchar(30) not null,
   organizationregistrationid bigint(20),
   employeeid           bigint(20) not null,
   watercode            varchar(50) not null,
   oldorganizationregistrationid bigint(20) not null,
   neworganizationregistrationid bigint(20) not null,
   newjobname           varchar(20) not null,
   newpostsalary        decimal(16,4) not null,
   remark               varchar(100),
   oldjobname           varchar(20) not null,
   oldpostsalary        decimal(16,4) not null,
   createuserid         bigint(20) not null,
   CreateUserName       varchar(20) not null,
   create_time          datetime,
   auditperson          varchar(20) not null,
   audittime            datetime,
   auditstatus          bigint(2) default 0,
   primary key (id)
);

/*==============================================================*/
/* Table: pm_propertycompany                                    */
/*==============================================================*/
create table pm_propertycompany
(
   id                   bigint(20) not null auto_increment,
   enterprisenumber     varchar(30) not null,
   pc_name              varchar(50) not null,
   pc_people            varchar(6) not null,
   pc_phone             varchar(20) not null,
   pc_detail            varchar(1000) not null,
   pc_level             bigint(10) not null,
   bm_store_img_id      varchar(18),
   bm_store_img_id_u    varchar(200),
   businesslicenseimgurl varchar(200),
   province_id          varchar(10) not null,
   city_name            varchar(30) not null,
   area_id              varchar(10) not null,
   street_id            varchar(10),
   street_name          varchar(30),
   bm_store_addr        varchar(100) not null,
   bm_y                 varchar(20),
   bm_x                 varchar(20),
   begin_time_stamp     bigint(20) not null,
   end_time_stamp       bigint(20) not null,
   begin_time           datetime not null,
   end_time             datetime not null,
   worker_id            bigint(20),
   pc_state             varchar(1) not null,
   create_time          datetime not null,
   createuserid         bigint(20) not null,
   createusername       varchar(20) not null,
   primary key (id)
);

/*==============================================================*/
/* Table: pm_propertycompany_branch                             */
/*==============================================================*/
create table pm_propertycompany_branch
(
   pc_branch_id         bigint(20) not null auto_increment,
   pc_id                bigint(20) not null,
   parentid             bigint(20) not null default 0,
   pc_branch_name       varchar(50) not null,
   create_time          datetime not null,
   createuserid         bigint(20) not null,
   createusername       varchar(20) not null,
   primary key (pc_branch_id)
);

/*==============================================================*/
/* Table: pm_propertycompany_menu                               */
/*==============================================================*/
create table pm_propertycompany_menu
(
   id                   bigint(20) not null auto_increment,
   menu_id              bigint(6) not null,
   enterprisenumber     varchar(30) not null,
   menu_state           bigint(2) default 1,
   primary key (id)
);

/*==============================================================*/
/* Table: pm_roomarchives                                       */
/*==============================================================*/
create table pm_roomarchives
(
   id                   bigint(20) not null auto_increment,
   enterprisenumber     varchar(30) not null,
   communityInformationid bigint(20),
   roomcode             varchar(20) not null,
   builtuparea          decimal(12,4) not null default 0.00,
   Innerarea            decimal(12,4),
   poolarea             decimal(12,4),
   sortcode             bigint(10),
   decorationsituation  bigint(10),
   orientation          varchar(20),
   roomtype             bigint(10),
   roomstate            bigint(10),
   chargeserviceobject  bigint(10),
   numberoffloors       bigint(10) not null,
   roomuse              varchar(20),
   unitnumber           varchar(10),
   ownershiptype        varchar(10),
   address              varchar(100),
   remark               varchar(150),
   rent                 decimal(12,4),
   whethertosigntheagreement bigint(10),
   totalprice           decimal(12,4),
   unitprice            decimal(12,4),
   managementexpense    decimal(12,4),
   contractsigningprocess varchar(150),
   specialunitindication varchar(20),
   whethertheroomiseffective bigint(10),
   splitrentstatus      bigint(10),
   splitactivestate     bigint(10),
   create_time          datetime not null,
   createuserid         bigint(20) not null,
   createusername       varchar(20) not null,
   primary key (id)
);

/*==============================================================*/
/* Table: pm_roomclientfile                                     */
/*==============================================================*/
create table pm_roomclientfile
(
   id                   bigint(20) not null auto_increment,
   enterprisenumber     varchar(30) not null,
   communityInformationid bigint(20) not null,
   roomarchives         bigint(20) not null,
   clientproperty       bigint(20) not null,
   customernumber       varchar(20) not null,
   customercategories   bigint(20),
   customername         varchar(10) not null,
   contacts             varchar(10),
   telephone            varchar(20),
   mobilephone          varchar(15),
   fax                  varchar(20),
   idnumber             varchar(15),
   birthday             datetime,
   qq                   varchar(12),
   handoverdate         datetime,
   email                varchar(20),
   checkindate          datetime,
   decorationdate       datetime,
   chargestartdate      datetime,
   chargeuptodate       datetime,
   workplace            varchar(50),
   associationworkplace varchar(50),
   zipcode              varchar(6),
   duties               varchar(10),
   residentpopulation   varchar(10),
   licenseplate         varchar(15),
   temporaryresidents   varchar(10),
   householdcardnumber  varchar(20),
   emergencycontact     varchar(10),
   emergencycontactphone varchar(20),
   address              varchar(50),
   customerinquirycode  varchar(10),
   remark               varchar(100),
   legalperson          varchar(10),
   ownedindustry        varchar(20),
   mainbusiness         varchar(20),
   operatingconditions  varchar(20),
   starrating           varchar(10),
   dutyparagraph        varchar(20),
   accountname          varchar(20),
   bankcode             varchar(20),
   bankaccount          varchar(20),
   bank                 varchar(20),
   whetherthebankwithheld bigint(10),
   contractstartdate    datetime,
   enddateofcontract    datetime,
   moveoutstate         bigint(10),
   create_time          datetime not null,
   createuserid         bigint(20) not null,
   createusername       varchar(20) not null,
   primary key (id)
);

/*==============================================================*/
/* Table: pm_roomcustomerfamilymembers                          */
/*==============================================================*/
create table pm_roomcustomerfamilymembers
(
   id                   bigint(20) not null auto_increment,
   roomclientfile       bigint(20) not null,
   name                 varchar(10) not null,
   idcardnum            varchar(20),
   gender               bigint(5) not null,
   birthday             datetime,
   relationshipwiththeheadofhousehold bigint(10),
   telephone            varchar(20),
   workplace            varchar(50),
   primary key (id)
);

/*==============================================================*/
/* Table: pm_roomfileattachmenttable                            */
/*==============================================================*/
create table pm_roomfileattachmenttable
(
   id                   bigint(20) not null auto_increment,
   enterprisenumber     varchar(30) not null,
   communityInformationid bigint(20),
   filename             varchar(20) not null,
   uploaddate           datetime not null,
   createuserid         bigint(20) not null,
   createusername       varchar(20) not null,
   filesize             varchar(20),
   primary key (id)
);

/*==============================================================*/
/* Table: pm_staffassessmentregistrationform                    */
/*==============================================================*/
create table pm_staffassessmentregistrationform
(
   id                   bigint(20) not null auto_increment,
   enterprisenumber     varchar(30) not null,
   employeeid           bigint(20),
   organizationregistrationid bigint(20),
   evaluationperson     varchar(10),
   appraisaldate        datetime not null,
   evaluationstartdate  datetime not null,
   evaluationenddate    datetime not null,
   evaluationcontent    varchar(20),
   evaluationrequirements varchar(20),
   evaluationresults    varchar(50),
   evaluationremark     varchar(150),
   create_time          datetime,
   createuserid         bigint(20) not null,
   CreateUserName       varchar(20) not null,
   auditstatus          bigint(2) default 0,
   primary key (id)
);

/*==============================================================*/
/* Table: pm_sys_admin                                          */
/*==============================================================*/
create table pm_sys_admin
(
   admin_id             int not null auto_increment,
   admin_pwd            varchar(50),
   byname               varchar(10),
   wx_id                varchar(50),
   wxgzpt_id            varchar(50),
   create_time          datetime,
   primary key (admin_id)
);

/*==============================================================*/
/* Table: pm_sys_menu                                           */
/*==============================================================*/
create table pm_sys_menu
(
   menu_id              bigint(8) not null auto_increment,
   parentid             bigint(8) not null default 0,
   menu_name            varchar(20) not null,
   menu_img             varchar(50) not null,
   menu_type            bigint(10) not null,
   navigateurl          varchar(200),
   menu_order           int(6),
   target               varchar(10),
   sortcode             bigint(10) not null,
   deletemark           bigint(2) default 1,
   create_time          datetime,
   createuserid         bigint(20) not null,
   createusername       varchar(20) not null,
   modifydate           datetime not null,
   modifyuserid         bigint(20) not null,
   modifyusername       varchar(20) not null,
   primary key (menu_id)
);

/*==============================================================*/
/* Table: pm_warrantysheet                                      */
/*==============================================================*/
create table pm_warrantysheet
(
   breakdown_id         bigint(20) not null auto_increment,
   pc_id                bigint(20) not null,
   breakdown_name       varchar(20) not null,
   breakdown_phone      varchar(20) not null,
   province_id          varchar(10) not null,
   province_name        varchar(30),
   city_id              varchar(10) not null,
   city_name            varchar(30) not null,
   area_id              varchar(10) not null,
   area_name            varchar(30),
   street_id            varchar(10),
   street_name          varchar(30),
   community_id         bigint(20) not null,
   buildingid           bigint(20) not null,
   roomarchivesid       bigint(20),
   begin_time           datetime,
   end_time             datetime,
   breakdown_detail     varchar(3000) not null,
   breakdown_class      varchar(2),
   breakdown_state      varchar(2),
   breakdown_type       varchar(1),
   breakdown_genre      varchar(1),
   repair_days          bigint(10) not null default 0,
   worker_days          bigint(10) not null default 0,
   worker_days_check    varchar(1) not null,
   bill_repair_text     varchar(50),
   worker_describe      varchar(3000),
   create_user          bigint(20) not null,
   create_type          varchar(1) not null,
   operation_id         bigint(20),
   user_id_assign       bigint(20),
   user_id_accept       bigint(20),
   material_money       decimal(16,4) not null,
   worker_money         decimal(16,4) not null,
   prime_cost           decimal(16,4) not null,
   summation            decimal(16,4) not null,
   pay_no               bigint(20),
   pay_type             varchar(1),
   create_time          date not null,
   primary key (breakdown_id)
);

