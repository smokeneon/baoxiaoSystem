<%--
  Created by IntelliJ IDEA.
  User: Leondon
  Date: 2019-04-12
  Time: 10:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>登录 | 报销管理系统</title>


  <!--STYLESHEET-->
  <!--=================================================-->



  <!--Bootstrap Stylesheet [ REQUIRED ]-->
  <link href="nifty/css/bootstrap.min.css" rel="stylesheet">


  <!--Nifty Stylesheet [ REQUIRED ]-->
  <link href="nifty/css/nifty.min.css" rel="stylesheet">


  <!--Premium Icons [ OPTIONAL ]-->
  <link href="nifty/premium/icon-sets/icons/line-icons/premium-line-icons.min.css" rel="stylesheet">
  <link href="nifty/premium/icon-sets/icons/solid-icons/premium-solid-icons.min.css" rel="stylesheet">


  <!--Magic Checkbox [ OPTIONAL ]-->
  <link href="nifty/plugins/magic-check/css/magic-check.min.css" rel="stylesheet">


  <!--JAVASCRIPT-->
  <!--=================================================-->

  <!--Page Load Progress Bar [ OPTIONAL ]-->
  <link href="nifty/css/pace.min.css" rel="stylesheet">
  <script src="nifty/js/pace.min.js"></script>


  <!--jQuery [ REQUIRED ]-->
  <script src="nifty/js/jquery.min.js"></script>


  <!--BootstrapJS [ RECOMMENDED ]-->
  <script src="nifty/js/bootstrap.min.js"></script>


  <!--Nifty Admin [ RECOMMENDED ]-->
  <script src="nifty/js/nifty.min.js"></script>


  <!--=================================================

  REQUIRED
  You must include this in your project.


  RECOMMENDED
  This category must be included but you may modify which plugins or components which should be included in your project.


  OPTIONAL
  Optional plugins. You may choose whether to include it in your project or not.


  Detailed information and more samples can be found in the document.

  =================================================-->




  <!-- Create your own class to load custum image [ SAMPLE ]-->
  <style>
    .demo-my-bg{
      background-image : url("./nifty/img/bg-img-3.jpg");
    }
  </style>



</head>

<!--TIPS-->
<!--You may remove all ID or Class names which contain "demo-", they are only used for demonstration. -->

<body>
<div id="container" class="cls-container">

  <!-- BACKGROUND IMAGE -->
  <!--===================================================-->
  <div id="bg-overlay" class="bg-img" style="background-image: url(nifty/img/bg-img-3.jpg)"></div>


  <!-- LOGIN FORM -->
  <!--===================================================-->
  <div class="cls-content">
    <div class="cls-content-sm panel">
      <div class="panel-body">
        <div class="mar-ver pad-btm">
          <h1 class="h3">登录</h1>
          <p>欢迎使用报销系统</p>
        </div>
        <form action="login" method="post">
          <div class="form-group">
            <input type="text" name="name" class="form-control" placeholder="账户名" autofocus>
          </div>
          <div class="form-group">
            <input type="password" name="password" class="form-control" placeholder="密码">
          </div>
          <br><br>
          <!-- <div class="checkbox pad-btm text-left">
              <input id="demo-form-checkbox" class="magic-checkbox" type="checkbox">
              <label for="demo-form-checkbox">记住我</label>
          </div> -->
          <button class="btn btn-primary btn-lg btn-block" type="submit">登录</button>
        </form>
      </div>

      <!-- <div class="pad-all">
          <a href="#" class="btn-link mar-rgt">忘记密码？</a>
          <a href="#" class="btn-link mar-lft">创建一个新账户</a>


      </div> -->
    </div>
  </div>
  <!--===================================================-->



</div>
<!--===================================================-->
<!-- END OF CONTAINER -->


</body>
</html>

