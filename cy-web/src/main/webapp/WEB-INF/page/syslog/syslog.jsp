<%--
  Created by 陈熠.
  email: 228112142@qq.com
  Date : 2017/6/23
  Time : 10:27
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<html>
<head>
    <title>操作日志</title>
    <%@ include file="/demo/resource.jsp" %>
</head>
<body>
<script type="text/javascript"  src="/demo/syslog.js"></script>
<form class="layui-form "  action="">
    <div class="layui-form-item">
        <label class="layui-form-label">用户名:</label>
        <div class="layui-input-inline">
            <input type="text" name="username"  placeholder="请输入用户名"  class="layui-input">
        </div>
        <label class="layui-form-label">用户操作:</label>
        <div class="layui-input-inline">
            <input type="text" name="operation"  placeholder="请输入用户操作"  class="layui-input">
        </div>
        <div class="layui-input-inline">
            <button class="layui-btn" table-id="syslogTable" lay-submit="" lay-filter="search">查询</button>
            <button type="reset" class="layui-btn layui-btn-primary" >重置</button>
        </div>
    </div>
</form>
<div class="layui-btn-group">
    <shiro:hasPermission name="sys:log:add">
        <button  class="layui-btn" onclick="add()"><i class="layui-icon"></i>增加</button>
        <%--<button  class="layui-btn"><a style="color:white;float:right;" href="/demo/add.jsp"><i class="layui-icon"></i>增加</a></button>--%>
    </shiro:hasPermission>
    <shiro:hasPermission name="sys:log:edit">
        <button class="layui-btn" onclick="edit('syslogTable');" style="margin-left: 5px!important;"><i class="layui-icon"></i>修改</button>
    </shiro:hasPermission>
    <shiro:hasPermission name="sys:log:delete">
        <button class="layui-btn" onclick="deleteBatch('syslogTable');" style="margin-left: 5px!important;"><i class="layui-icon"></i>删除</button>
    </shiro:hasPermission>

</div>
<div class="layui-form " >
    <table class="layui-table" id="syslogTable" name="pageGrid" pageProps="url:'/sys/log/list',checkbox:'true',pageColor:'#009688'">
        <thead>
        <tr>
            <!--复选框-->
            <th param="{type:'checkbox'}" >
                <input type="checkbox" lay-skin="primary" lay-filter="allChoose">
            </th>
            <!--isPrimary：是否是主键-->
            <th param="{name:'id',isPrimary:'true',hide:'true'}" >用户ID</th>
            <th param="{name:'username'}">用户名</th>
            <th param="{name:'operation'}">用户操作</th>
            <th param="{name:'method',render:'Render.customMethod'}">请求方法</th>
            <th param="{name:'ip',render:'Render.customState'}">ip地址</th>
            <th param="{name:'createDate'}">创建时间</th>
        </tr>
        </thead>
    </table>
</div>
</body>
</html>