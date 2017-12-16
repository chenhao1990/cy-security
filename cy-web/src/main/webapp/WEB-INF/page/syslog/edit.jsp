<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/6/26
  Time: 12:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@ include file="/demo/resource.jsp" %>
</head>
<body>
<fieldset class="layui-elem-field">
    <legend>修改</legend>
    <div class="layui-field-box">
        <form class="layui-form" action="">
            <input type="hidden" name="id" value="${model.id}"/>
            <div class="layui-form-item">
                <label class="layui-form-label">用户名</label>
                <div class="layui-input-block">
                    <input type="text" value="${model.username}" name="username" lay-verify="title" autocomplete="off" placeholder="请输入用户名" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">用户操作</label>
                <div class="layui-input-block">
                    <input type="text" value="${model.operation}" name="operation" lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button class="layui-btn" lay-submit="" lay-filter="save">保存</button>
                    <button  class="layui-btn">  <a class="btn btn-danger" style="color:white;float:right;" href="/demo/syslog.jsp">返回</a></button>
                </div>
            </div>
        </form>
    </div>
</fieldset>
<script>
    layui.use(['form'], function(){
        var form = layui.form();

        //监听提交
        form.on('submit(save)', function(data){
            var url ="/sys/log/update" ;
            $.ajax({
                //url: "/sys/menu/list",
                type: "post",
                url: url,
                contentType: "application/json",
                data: JSON.stringify(data.field),
                async: false,
                dataType:"json",
                success: function (R) {
                    if(R.code === 0){
                        alert('操作成功', function(index){
                            window.location.href="demo/list.jsp";
                        });
                    }else{
                        alert(R.msg);
                    }
                },
                error:function(){
                    alert("系统错误");
                }
            });
            return false;
        });

    });
</script>
</body>
</html>
