<%--
  Created by IntelliJ IDEA.
  User: Leondon
  Date: 2019-04-12
  Time: 10:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>欢迎使用报销管理系统</title>


    <!--STYLESHEET-->
    <!--=================================================-->



    <!--Bootstrap Stylesheet [ REQUIRED ]-->
    <link href="nifty/css/bootstrap.min.css" rel="stylesheet">


    <!--Nifty Stylesheet [ REQUIRED ]-->
    <link href="nifty/css/nifty.min.css" rel="stylesheet">


    <!--Premium Icons [ OPTIONAL ]-->
    <link href="nifty/premium/icon-sets/icons/line-icons/premium-line-icons.min.css" rel="stylesheet">
    <link href="nifty/premium/icon-sets/icons/solid-icons/premium-solid-icons.min.css" rel="stylesheet">


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

<style>
    .btn{
        margin: 5px 2px;
    }
</style>



</head>

<!--TIPS-->
<!--You may remove all ID or Class names which contain "demo-", they are only used for demonstration. -->

<body>
<%String role=(String) session.getAttribute("role");%>
<%if(role==null){
    request.getRequestDispatcher("./login.jsp").forward(request,response);
}
  %>
<div id="container" class="effect mainnav-lg">

    <!--NAVBAR-->
    <!--===================================================-->
    <header id="navbar">
        <div id="navbar-container" class="boxed">

            <!--Brand logo & name-->
            <!--================================-->
            <div class="navbar-header">
                <a href="index.html" class="navbar-brand">
                    <img src="./nifty/img/logo.png" alt="Nifty Logo" class="brand-icon">
                    <div class="brand-title">
                        <span class="brand-text">报销管理系统</span>
                    </div>
                </a>
            </div>
            <!--================================-->
            <!--End brand logo & name-->


            <!--Navbar Dropdown-->
            <!--================================-->
            <div class="navbar-content clearfix">
                <ul class="nav navbar-top-links pull-left">

                    <!--Navigation toogle button-->
                    <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                    <li class="tgl-menu-btn">
                        <a class="mainnav-toggle" href="#">
                            <i class="pli-view-list icon-lg"></i>
                        </a>
                    </li>
                    <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                    <!--End Navigation toogle button-->



                </ul>
                <ul class="nav navbar-top-links pull-right">



                    <!--User dropdown-->
                    <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                    <li id="dropdown-user" class="dropdown">
                        <a href="#" data-toggle="dropdown" class="dropdown-toggle text-right">
                                <span class="ic-user pull-right">
                                    <!-- You may use image instead of an icon.
                                    <img class="img-circle img-user media-object" src="img/av1.png" alt="Profile Picture">-->
<%--                                    <i class="pli-male"></i>--%>
                                </span>
<%--                            <div class="username hidden-xs">John Doe</div>--%>
                        </a>


                        <div class="dropdown-menu dropdown-menu-md dropdown-menu-right panel-default">



                            <!-- User dropdown menu -->

                    </li>
                    <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                    <!--End user dropdown-->


                </ul>
            </div>
            <!--================================-->
            <!--End Navbar Dropdown-->

        </div>
    </header>
    <!--===================================================-->
    <!--END NAVBAR-->

    <div class="boxed">

        <!--CONTENT CONTAINER-->
        <!--===================================================-->
        <div id="content-container">

            <!--Page Title-->
            <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
            <div id="page-title">
                <h1 class="page-header text-overflow">欢迎</h1>

                <!--Searchbox-->
                <div class="searchbox">
                    <div class="input-group custom-search-form">
<%--                        <input type="text" class="form-control" placeholder="搜索..">--%>
                        <span class="input-group-btn">
<%--                                <button class="text-muted" type="button"><i class="pli-magnifi-glass"></i></button>--%>
                            </span>
                    </div>
                </div>
            </div>
            <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
            <!--End page title-->


            <!--Breadcrumb-->
            <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
            <ol class="breadcrumb">
                <li><a href="#">登录</a></li>
                <li class="active">欢迎</li>
            </ol>
            <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
            <!--End breadcrumb-->




            <!--Page content-->
            <!--===================================================-->
            <div id="page-content">



                <div class="col-sm-12">
                    <div class="jumbotron text-main">
                        <h1>欢迎使用报销管理系统</h1><br>
                        <p>你可以点击下方按钮选择身份</p>
                        <p>
                          <%

                                if(role.contains("管理员")){
                            %>
                            <a href="ListUser" role="button" class="btn btn-info btn-lg">&nbsp管理员&nbsp &nbsp</a>
                            <%}
                                if(role.contains("财务人员")){
                                %>
                            <a href="FinancialList" role="button" class="btn btn-warning btn-lg">财务人员</a>
                            <%}
                                if(role.contains("审批人员")){
                            %>
                            <a href="ApprovalList" role="button" class="btn btn-success btn-lg">审批人员</a>
                            <%}
                                if(role.contains("普通用户")){

                            %>
                            <a href="Normal_homepage" role="button" class="btn btn-primary btn-lg">普通用户</a>

                            <%}%>
                        </p>
                    </div>
                    <div class="panel">

                        <!--Carousel-->
                        <!--===================================================-->
                        <div id="demo-carousel" class="carousel slide" data-ride="carousel">

                            <!--Indicators-->
                            <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                            <ol class="carousel-indicators out">
                                <li class="active" data-slide-to="0" data-target="#demo-carousel"></li>
                                <li data-slide-to="1" data-target="#demo-carousel"></li>
                                <li data-slide-to="2" data-target="#demo-carousel"></li>
                            </ol>
                            <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->

                            <div class="carousel-inner text-center">

                                <!--Item 1-->
                                <div class="item active">
                                    <h4 class="text-main">更优秀的管理系统</h4>
                                    <p>采用分区域管理,权限细分,更易于分工协作</p>
                                </div>

                                <!--Item 2-->
                                <div class="item">
                                    <h4 class="text-main">易于使用</h4>
                                    <p>扁平化页面设计,无脑化使用</p>
                                </div>

                                <!--Item 3-->
                                <div class="item">
                                    <h4 class="text-main">数据分析</h4>
                                    <p>表格可视化,数据更直观</p>
                                </div>
                            </div>

                            <!--carousel-control-->
                            <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                            <a class="carousel-control left" data-slide="prev" href="#demo-carousel"><i
                                    class="demo-pli-arrow-left icon-2x"></i></a>
                            <a class="carousel-control right" data-slide="next" href="#demo-carousel"><i
                                    class="demo-pli-arrow-right icon-2x"></i></a>
                            <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->

                        </div>
                        <!--===================================================-->
                        <!--End Carousel-->


                    </div>
                </div>

            </div>
            <!--===================================================-->
            <!--End page content-->


        </div>
        <!--===================================================-->
        <!--END CONTENT CONTAINER-->



        <!--MAIN NAVIGATION-->
        <!--===================================================-->
        <nav id="mainnav-container">
            <div id="mainnav">

                <!--Menu-->
                <!--================================-->
                <div id="mainnav-menu-wrap">
                    <div class="nano">
                        <div class="nano-content">

                            <!--Profile Widget-->
                            <!--================================-->
                            <div id="mainnav-profile" class="mainnav-profile">
                                <div class="profile-wrap text-center">
                                    <div class="pad-btm">
                                        <img class="img-circle img-md" src="./nifty/img/profile-photos/5.png"
                                             alt="Profile Picture">
                                    </div>
                                    <a href="#profile-nav" class="box-block" data-toggle="collapse"
                                       aria-expanded="false">
                                            <span class="pull-right dropdown-toggle">
                                                <i class="dropdown-caret"></i>
                                            </span>
                                        <p class="mnp-name">欢迎,<%=session.getAttribute("username")%></p>
                                        <span class="mnp-desc">leon@hooc.top</span>
                                    </a>
                                </div>
                                <div id="profile-nav" class="collapse list-group bg-trans">


                                    <a href="Logout" class="list-group-item">
                                        <i class="pli-unlock icon-lg icon-fw"></i> 登出
                                    </a>
                                </div>
                            </div>


                            <!--Shortcut buttons-->
                            <!--================================-->
                            <div id="mainnav-shortcut">
<%--                                <ul class="list-unstyled shortcut-wrap">--%>
<%--                                    <li class="col-xs-3" data-content="我的信息">--%>
<%--                                        <a class="shortcut-grid" href="#">--%>
<%--                                            <div class="icon-wrap icon-wrap-sm icon-circle bg-trans-dark">--%>
<%--                                                <i class="psi-male"></i>--%>
<%--                                            </div>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>
<%--                                    <li class="col-xs-3" data-content="信息">--%>
<%--                                        <a class="shortcut-grid" href="#">--%>
<%--                                            <div class="icon-wrap icon-wrap-sm icon-circle bg-trans-dark">--%>
<%--                                                <i class="psi-speech-bubble-3"></i>--%>
<%--                                            </div>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>
<%--                                    <li class="col-xs-3" data-content="活动">--%>
<%--                                        <a class="shortcut-grid" href="#">--%>
<%--                                            <div class="icon-wrap icon-wrap-sm icon-circle bg-trans-dark">--%>
<%--                                                <i class="psi-thunder"></i>--%>
<%--                                            </div>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>
<%--                                    <li class="col-xs-3" data-content="锁屏">--%>
<%--                                        <a class="shortcut-grid" href="#">--%>
<%--                                            <div class="icon-wrap icon-wrap-sm icon-circle bg-trans-dark">--%>
<%--                                                <i class="psi-lock-2"></i>--%>
<%--                                            </div>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>
<%--                                </ul>--%>
                            </div>
                            <!--================================-->
                            <!--End shortcut buttons-->

                            <ul id="mainnav-menu" class="list-group">


                                <!--Menu list item-->
                                <li class="active-sub">
                                    <a href="Welcome">
                                        <i class="psi-mouse-3"></i>
                                        <span class="menu-title">欢迎</span>
                                        <i class="arrow"></i>
                                    </a>
                                </li>



<%--                                <!--Category name-->--%>
<%--                                <li class="list-header">功能列表</li>--%>

<%--                                <!--Menu list item-->--%>
<%--                                <li class="">--%>
<%--                                    <a href="#">--%>
<%--                                        <i class="psi-mouse-3"></i>--%>
<%--                                        <span class="menu-title">身份</span>--%>
<%--                                        <i class="arrow"></i>--%>
<%--                                    </a>--%>

<%--                                    <!--Submenu-->--%>
<%--                                    <ul class="collapse in">--%>

<%--                                        <li><a href="ListUser">管理员</a></li>--%>
<%--                                        <li><a href="./Financial_management/examination_approval_reimbursement.html">财务人员</a></li>--%>
<%--                                        <li><a href="./normal_user/create_expense.html">普通用户</a></li>--%>



<%--                                    </ul>--%>
<%--                                </li>--%>



                        </div>
                    </div>
                </div>
                <!--================================-->
                <!--End menu-->

            </div>
        </nav>
        <!--===================================================-->
        <!--END MAIN NAVIGATION-->


    </div>



    <!-- FOOTER -->
    <!--===================================================-->
    <footer id="footer">

        <!-- Visible when footer positions are fixed -->
        <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
        <div class="show-fixed pad-rgt pull-right">
            You have <a href="#" class="text-main"><span class="badge badge-danger">3</span> pending action.</a>
        </div>



        <!-- Visible when footer positions are static -->
        <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
        <div class="hide-fixed pull-right pad-rgt">
            www.leondon.cn版权所有©
        </div>



        <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
        <!-- Remove the class "show-fixed" and "hide-fixed" to make the content always appears. -->
        <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

        <p class="pad-lft">&#0169; 2019 Leondon</p>



    </footer>
    <!--===================================================-->
    <!-- END FOOTER -->


    <!-- SCROLL PAGE BUTTON -->
    <!--===================================================-->
    <button class="scroll-top btn">
        <i class="pci-chevron chevron-up"></i>
    </button>
    <!--===================================================-->



</div>
<!--===================================================-->
<!-- END OF CONTAINER -->



</body>

</html>