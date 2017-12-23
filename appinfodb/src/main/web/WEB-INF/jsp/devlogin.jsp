<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- //Meta-Tags -->

    <title>APP开发者平台</title>
    <script type="text/javascript">
      $(function () {
          //注册ajax同步跳转网页
          $("#register").click()
          $.post(url, {method:"regist",userName:$name.val(),password:$passwordEl.val()},
              function(data) {
                  alert(data);
                //注册成功页面跳转，
                  window.location.href ="../jsp/dvlogin.jsp?name="+$nameEle.val();
              }
          );

      })
    </script>

    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath }/statics/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="${pageContext.request.contextPath }/statics/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="${pageContext.request.contextPath }/statics/css/nprogress.css" rel="stylesheet">
    <!-- Animate.css -->
    <link href="https://colorlib.com/polygon/gentelella/css/animate.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="${pageContext.request.contextPath }/statics/css/custom.min.css" rel="stylesheet">
    <%--登陆注册页面的样式--%>
    <link href="${pageContext.request.contextPath}/statics/css/style.css" rel="stylesheet">
    <%--<script type="text/javascript"
            src="http://qzonestyle.gtimg.cn/qzone/openapi/qc_loader.js" data-appid="#"
            data-redirecturi="REDIRECTURI" charset="utf-8"></script>--%>

  </head>

  <body class="login">


  <h1>登录表单</h1>

  <div class="container w3layouts agileits">

    <div class="login w3layouts agileits">
      <h2>登 录</h2>
      <form action="#" method="post">
        <input type="text" Name="Userame" placeholder="用户名" required="">
        <input type="password" Name="Password" placeholder="密码" required="">
      </form>
      <ul class="tick w3layouts agileits">
        <li>
          <input type="checkbox" id="brand1" value="">
          <label for="brand1"><span></span>记住我</label>
        </li>
      </ul>
      <div class="send-button w3layouts agileits">
        <form>
          <input type="submit" value="登 录">
        </form>
      </div>
      <a href="#">记住密码?</a>
      <div class="social-icons w3layouts agileits">
        <p>- 其他方式登录 -</p>
        <ul>
          <li class="qq"><a href="#">
            <span class="icons w3layouts agileits"></span>
            <span class="text w3layouts agileits">QQ</span></a></li>
          <li class="weixin w3ls"><a href="#">
            <span class="icons w3layouts"></span>
            <span class="text w3layouts agileits">微信</span></a></li>
          <li class="weibo aits"><a href="#">
            <span class="icons agileits"></span>
            <span class="text w3layouts agileits">微博</span></a></li>
          <div class="clear"> </div>
        </ul>
      </div>
      <div class="clear"></div>
    </div><div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >企业网站模板</a></div>
    <div class="register w3layouts agileits">
      <h2>注 册</h2>
      <form action="#" method="post">
        <input type="text" Name="Name" placeholder="用户名" required="">
        <input type="text" Name="Email" placeholder="邮箱" required="">
        <input type="password" Name="Password" placeholder="密码" required="">
        <input type="text" Name="Phone Number" placeholder="手机号码" required="">
      </form>
      <div class="send-button w3layouts agileits">
        <form>
          <input type="submit" value="免费注册">
        </form>
      </div>
      <div class="clear"></div>
    </div>

    <div class="clear"></div>

  </div>

  <div class="footer w3layouts agileits">
    <p>Copyright &copy; More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
  </div>








    <div>
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>

      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
            <form action="dologin" method="post">
              <h1>APP开发者平台</h1>
              <div>
                <input type="text" class="form-control" name="devCode" placeholder="请输入用户名" required="" />
              </div>
              <div>
                <input type="password" class="form-control" name="devPassword" placeholder="请输入密码" required="" />
              </div>
              <span>${error }</span>
              <div>
              	<button type="submit" class="btn btn-success">登     录</button>
              	<button type="reset" class="btn btn-default">重　填</button>
                <a href="register">注册</a>
              </div>
              <%--接入第三方qq账号登陆入口--%>
              <%--<div>
                <span id="qqLoginBtn"></span>
                <script type="text/javascript">
                    QC.Login({
                        btnId:"qqLoginBtn"    //插入按钮的节点id
                    });
                </script>
              </div>--%>

              <div class="clearfix"></div>

              <div class="separator">
                <div>
                  <p>©2016 All Rights Reserved. </p>
                </div>
              </div>
            </form>
          </section>
        </div>
      </div>
    </div>
  </body>
</html>