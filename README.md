# cy-security1.1

 **框架说明** 

1. 基于ssm+shiro安全框架的后台管理框架，权限简单易用可控制到按钮。
2. 配置代码生成器，减少70%开发时间，专注业务逻辑。
3. 前端声明式组件封装、附带文档编写 ctrl+c ctrl+v 即可使用。封装数据源，可通过url、枚举、字典直接渲染组件。代码量极少且易维护。
4. layui常用代码的二次封装，省略layui部分繁琐的代码！
    
 例：

![输入图片说明](https://gitee.com/uploads/images/2017/1213/182658_b69a61e5_1334796.png "屏幕截图.png")


![输入图片说明](https://gitee.com/uploads/images/2017/1213/182830_c824ecdd_1334796.png "屏幕截图.png")


 **模块** 

- cy-common   公用模块
- cy-gen      代码生成器模块
- cy-shiro    shiro模块
- cy-web      web开发模块

 **webapp** 

- common           公用文件
- frontframe       前端框架文件
- page             页面文件
- statics          插件


 **本地部署**
 
1. 通过git下载源码
2. 创建数据库cy，数据库编码为UTF-8
3. 执行doc/cy.sql文件，初始化数据【按需导入表结构及数据】
4. IDEA、Eclipse配置tomcat,启动项目
5. 项目访问路径：http://localhost:8080/
6. 账号密码：admin/admin
7. 右上角"前端框架"熟悉前端组件


 **项目演示** 

- 演示地址：http://admin.cymall.xin
- 账号密码：admin/admin


 **如何交流、反馈、参与贡献？** 

- 项目主页 http://admin.cymall.xin
- 码云地址 https://gitee.com/leiyuxi/cy-security
- qq群    275846351


 **项目截图** 

首页默认菜单

![输入图片说明](https://gitee.com/uploads/images/2017/1213/155649_2341a694_1334796.png "屏幕截图.png")

前端框架默认菜单

![输入图片说明](https://gitee.com/uploads/images/2017/1213/155743_8b6111d1_1334796.png "屏幕截图.png")

增删改查页面

![输入图片说明](https://gitee.com/uploads/images/2017/1213/155835_550b7c8c_1334796.png "屏幕截图.png")


 **组件使用说明页面** 

代码示例

![输入图片说明](https://gitee.com/uploads/images/2017/1213/155929_6041fc05_1334796.png "屏幕截图.png")

效果

![输入图片说明](https://gitee.com/uploads/images/2017/1213/155939_d335ad4a_1334796.png "屏幕截图.png")

参数详解

![输入图片说明](https://gitee.com/uploads/images/2017/1213/155950_a6543f8b_1334796.png "屏幕截图.png")

图片上传组件

![上传组件封装](https://gitee.com/uploads/images/2017/1213/181231_21621036_1334796.png "屏幕截图.png")

![输入图片说明](https://gitee.com/uploads/images/2017/1213/181319_13d218bc_1334796.png "屏幕截图.png")

![输入图片说明](https://gitee.com/uploads/images/2017/1213/181422_1ab20aee_1334796.png "屏幕截图.png")
