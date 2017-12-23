<%--
  Created by IntelliJ IDEA.
  User: sony
  Date: 2017/12/22
  Time: 14:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="basic.jsp"%>
<html>
<head>
    <title>用户注册页面</title>
    <script type="text/javascript">
        $(function () {
            $("#register").click(function () {

                var p= $("#P").val()
                var p1=$("#P1").val()
                if(p!=p1){
                    alert("两次密码不一致")
                    return false;
                }

                var devUser=$("#addUserForm").serialize();
                $.post("${pageContext.request.contextPath}/dev/re",devUser,function (data) {

                    var msg=parseInt(data);

                    if(msg>0){
                        alert("注册成功，点击确定进入登陆页")
                        window.location.href="${pageContext.request.contextPath}/dev/login"
                        return;
                    }
                    alert("注册失败")
                })
            })
        })
    </script>
</head>
<body>
<%--bootstrop实现的一个注册页面--%>
<div class="page-header" align="center">
    <h1>用户注册 </h1>
</div>
<form class="form-horizontal" id="addUserForm" action="${pageContext.request.contextPath}/dev/re" method="post">
    <div class="form-group" >
        <label  class="col-sm-2 control-label col-lg-offset-3">用户名：</label>
        <div class="col-sm-2">
            <input type="test" class="form-control" name="devCode" placeholder="用户名"required>
        </div>
    </div>
    <div class="form-group" >
        <label  class="col-sm-2 control-label col-lg-offset-3" >密码：</label>
        <div class="col-sm-2">
            <input type="password" class="form-control" name="devPassword" id="P" placeholder="密码" required>
        </div>
    </div>
    <div class="form-group">
        <label  class="col-sm-2 control-label col-lg-offset-3" >确认密码：</label>
        <div class="col-sm-2">
            <input type="password" class="form-control" name="devPassword1" id="P1" placeholder="确认密码" required>
        </div>
    </div>
    <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label col-lg-offset-3">Email</label>
        <div class="col-sm-2">
            <input type="email" class="form-control" name="devEmail" id="inputEmail3" placeholder="Email">
        </div>
    </div>
    <div class="form-group">
        <label  class="col-sm-2 control-label col-lg-offset-3" >手机号：</label>
        <div class="col-sm-2">
            <input type="number" class="form-control" name="telePhone" placeholder="手机号" required>
        </div>
    </div>
    <div class="form-group">
        <label  class="col-sm-2 control-label col-lg-offset-3" ></label>
        <div class="col-sm-3">
            <button type="button" class="btn btn-default" id="register">注册</button>
            <button type="button" class="btn btn-default"><a href="login">返 回</a></button>
        </div>
    </div>

</form>
</body>
</html>
