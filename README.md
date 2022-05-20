# 基于C# Windows窗体的 教务系统 学生信息管理系统 学生成绩管理系统 学生选课系统，C# + SQL Server

# 1   系统功能描述

本系统包括两类用户：学生、管理员。管理员可以通过系统来添加管理员信息、修改管理员信息、添加学生信息、修改学生信息；开设课程、查询课程、录入成绩、统计成绩、修改成绩、修改个人密码等，而学生则可以通过系统来选择课程、查询课程、显示自己的课表、查询自己的成绩单、修改个人密码等等。

## 1.1  系统功能流程

![image001](README.assets/image001.png)



## 1.1  管理员角色拥有的功能

- ## 1.1  管理员角色拥有的功能

  l 管理员信息管理

  Ø 添加管理员信息；

  Ø 管理员可以添加其他的管理员信息。

  Ø 修改管理员信息；

  Ø 管理员可以删除其他的管理员信息。

  l 学生信息管理

  Ø 添加学生信息；

  Ø 管理员可以添加学生信息，这些信息包括学生的学号，密码，年级，专业，出生日期等等。

  Ø 修改学生信息；

  Ø 管理员可以修改学生的信息；

  l 课程管理

  Ø 开设课程；

  Ø 管理员可以录入课程信息，学生就可以浏览到这些课程信息，从而选课。

  Ø 查询课程；

  Ø 可以通过学期查询课程，或通过学期和课程结合的方式查询课程。

  l 成绩管理

  Ø 录入成绩；

  Ø 管理员可以录入学生的成绩。

  Ø 统计成绩；

  Ø 管理员可以通过学期和课程信息来统计某门课的学生成绩，平均分、最高分、最低分以及可以通过成绩区间来查询某个学期某门课的学生的成绩信息。并且可以实现排序功能。

  l 修改成绩；

  Ø 管理员可以对成绩出错的学生的成绩进行修改。

  l 修改个人密码；

  l 管理员可以修改自己的密码。

  ## 1.2  学生角色拥有的功能

  l 课程管理

  Ø 选择课程；

  Ø 学生可以根据本学期管理员发布的课程来选课。

  Ø 查询课程；

  Ø 可以通过学期查询课程，或通过学期和课程结合的方式查询课程。

  Ø 显示课表；

  Ø 学生可以根据自己的选课情况来查询自己的课表。

  l 成绩管理

  l 我的成绩单；

  l 学生可以根据学期来查询自己某个学期所有选修课程的成绩信息。

  l 修改个人密码；

  l 学生可以修改自己的密码。。

# 2 系统所用数据库说明

## 2.1  ER图

​           ![image002](README.assets/image002-1653022344696.png)

## 2.1  数据表的结构设计

### 2.1.1 班级表

​                          ![image003](README.assets/image003.png)

### 2.1.2 管理员表

![image004](README.assets/image004.png)

  

### 2.1.3 选课和成绩表

![image005](README.assets/image005.png)

### 2.1.4 排课时间表

 ![image006](README.assets/image006.png)

### 2.1.5 学生表

![image007](README.assets/image007.png)

# 3   功能模块运行界面截图

## 3.1  管理员端

#### 3.1.1.1 用户登录

![image008](README.assets/image008-1653022473133.png)

![image009](README.assets/image009-1653022476525.png)

#### 3.1.1.2 管理员首页

![image010](README.assets/image010-1653022482380.png)

#### 3.1.2.1 修改管理员信息

 ![image011](README.assets/image011.png)

![image012](README.assets/image012.png)

  

#### 3.1.2.2 添加管理员

![image013](README.assets/image013.png)

  

#### 3.1.2.3 修改管理员密码信息

![image014](README.assets/image014.png)

  ![image015](README.assets/image015.png)

#### 3.1.2.4 删除管理员信息

![image016](README.assets/image016-1653022531343.png)

### 3.1.3 课程管理

#### 3.1.3.1 开设课程

![image017](README.assets/image017.png)

  

#### 3.1.3.2 查询开设的课程

![image018](README.assets/image018-1653022576696.png)

![image019](README.assets/image019.png)



### 3.1.4 学生信息管理

#### 3.1.4.1 添加学生

![image020](README.assets/image020.png)

  

#### 3.1.4.2 修改学生信息

![image021](README.assets/image021.png)

### 3.1.5 成绩管理

![image022](README.assets/image022.png)

#### 3.1.5.1 录入成绩（学生端,学生选课后,可录入）

![image023](README.assets/image023.png)

![image024](README.assets/image024.png)

![image025](README.assets/image025.png)

![image026](README.assets/image026.png)

#### 3.1.5.2 统计学生成绩

![image027](README.assets/image027.png)

![image028](README.assets/image028.png)

#### 3.1.5.3 修改学生成绩

 ![image029](README.assets/image029.png)

## 3.2  学生端

### 3.2.1 使用学生角色登录

![image030](README.assets/image030.png)

### 3.2.2 学生首页

![image031](README.assets/image031.png)

### 3.2.3 课程管理

#### 3.2.3.1 学生选课

  ![image032](README.assets/image032.png)

![image033](README.assets/image033.png)

![image034](README.assets/image034.png)

![image035](README.assets/image035.png)

#### 3.2.3.2 学生查询所选课程

![image036](README.assets/image036.png)

#### 3.2.3.3 学生查询课表

![image037](README.assets/image037.png)

### 3.2.4 成绩管理

#### 3.2.4.1 我的成绩单

![image038](README.assets/image038.png)

### 3.2.5 学生修改密码

![image039](README.assets/image039.png)

 

# 4   总结

通过本次实验我学会使用C#进行单页面的Windows窗体应用开发，在开发过程中大量使用到treeview组件，使用treeview实现点击不同的选项，在右侧面板中显示不同的界面。并且在其他的窗口得到在登录窗口输入的信息，在loginFram中设置两个方法，在其他类中只需要引用loginFram的这些方法即可。管理员开设课程时，对于同一时间该教室有课的情况做出异常处理。学生选择课程时，对选择一门课程与已选择的课程出现上课时间冲突的情况的异常处理。

 