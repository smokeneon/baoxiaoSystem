<%--
  Created by IntelliJ IDEA.
  User: leondon
  Date: 19-4-17
  Time: 下午10:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>创建报销单</title>


    <!--STYLESHEET-->
    <!--=================================================-->


    <!--Bootstrap Stylesheet [ REQUIRED ]-->
    <link href="../nifty/css/bootstrap.min.css" rel="stylesheet">


    <!--Nifty Stylesheet [ REQUIRED ]-->
    <link href="../nifty/css/nifty.min.css" rel="stylesheet">


    <!--Premium Icons [ OPTIONAL ]-->
    <link href="../nifty/premium/icon-sets/icons/line-icons/premium-line-icons.min.css" rel="stylesheet">
    <link href="../nifty/premium/icon-sets/icons/solid-icons/premium-solid-icons.min.css" rel="stylesheet">
    <link href="../nifty/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
    <link href="../nifty/css/nifty-demo-icons.css" rel="stylesheet">



    <!--JAVASCRIPT-->
    <!--=================================================-->

    <!--Page Load Progress Bar [ OPTIONAL ]-->
    <link href="../nifty/css/pace.min.css" rel="stylesheet">
    <script src="../nifty/js/pace.min.js"></script>


    <!--jQuery [ REQUIRED ]-->
    <script src="../nifty/js/jquery.min.js"></script>


    <!--BootstrapJS [ RECOMMENDED ]-->
    <script src="../nifty/js/bootstrap.min.js"></script>


    <!--Nifty Admin [ RECOMMENDED ]-->
    <script src="../nifty/js/nifty.min.js"></script>
    <script src="../nifty/plugins/bootstrap-table/bootstrap-table.min.js"></script>






</head>

<!--TIPS-->
<!--You may remove all ID or Class names which contain "demo-", they are only used for demonstration. -->

<body>
<%String role=(String) session.getAttribute("role");%>
<%if(role==null){
    request.getRequestDispatcher("../login.jsp").forward(request,response);
}if(!role.contains("普通用户")){
    request.getRequestDispatcher("../login.jsp").forward(request,response);
}%>
<div id="container" class="effect mainnav-lg">

    <!--NAVBAR-->
    <!--===================================================-->
    <header id="navbar">
        <div id="navbar-container" class="boxed">

            <!--Brand logo & name-->
            <!--================================-->
            <div class="navbar-header">
                <a href="index.html" class="navbar-brand">
                    <img src="../nifty/img/logo.png" alt="Nifty Logo" class="brand-icon">
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
                                    <!--<img class="img-circle img-user media-object" src="img/av1.png" alt="Profile Picture">-->
<%--                                    <i class="pli-male"></i>--%>
                                </span>
<%--                            <div class="username hidden-xs">John Doe</div>--%>
                        </a>


                        <div class="dropdown-menu dropdown-menu-md dropdown-menu-right panel-default">



                            <!-- User dropdown menu -->

                        </div>
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
                <h1 class="page-header text-overflow">报销总数据</h1>

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
                <li><a href="#">普通用户</a></li>
                <li class="active">报销总数据</li>
            </ol>
            <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
            <!--End breadcrumb-->




            <!--Page content-->
            <!--===================================================-->
            <div id="page-content">



                <div class="col-sm-12">

                    <!--Custom Toolbar-->
                    <!--===================================================-->
                    <div class="panel">
                        <div class="col-sm-12">

                            <!--Custom Toolbar-->
                            <!--===================================================-->
                            <div class="panel">
                                <div class="panel-heading">
                                    <h3 class="panel-title">统计报销数据：根据时间查看报销统计数据（报销类别--金额）</h3>
                                </div>
                                <div class="panel-body">
                                    <!-- Inline Form  -->
                                    <!--===================================================-->
                                    <form class="form-inline">
                                        <div class="form-group">
                                            <label for="demo-inline-inputmail" class="sr-only">流程编号</label>
                                            <input type="email" placeholder="开始日期" id="demo-inline-inputmail" class="form-control">
                                        </div>
                                        <div class="form-group">
                                            <label for="demo-inline-inputmail" class="sr-only">流程编号</label>
                                            <input type="email" placeholder="截止日期" id="demo-inline-inputmail" class="form-control">
                                        </div>


                                        <!-- <div class="checkbox">
                                            <input id="demo-remember-me" class="magic-checkbox" type="checkbox">
                                            <label for="demo-remember-me">Remember me</label>
                                        </div> -->
                                        <button class="btn btn-primary" type="submit">搜索</button>
                                        <!-- <button class="btn btn-default" type="submit">重置</button> -->
                                    </form>
                                    <!--===================================================-->
                                    <!-- End Inline Form  -->
                                    <!-- <button id="demo-delete-row" class="btn btn-primary" ><i class="glyphicon glyphicon-plus"></i> 添加</button> -->
                                    <table id="demo-custom-toolbar" class="demo-add-niftycheck" data-toggle="table"
                                           data-url="data/bs-table.json"
                                           data-toolbar="#demo-delete-row"
                                           data-search="false"
                                           data-show-refresh="false"
                                           data-show-toggle="false"
                                           data-show-columns="false"
                                           data-sort-name="id"
                                           data-height="600"
                                           data-page-list="[5, 10, 20]"
                                           data-page-size="5"
                                           data-pagination="true" data-show-pagination-switch="false">
                                        <thead>
                                        <tr>
                                            <th data-field="state" data-checkbox="true">全选</th>
                                            <th data-field="id" data-sortable="true" data-formatter="invoiceFormatter">时间</th>
                                            <th data-field="id" data-sortable="true" data-formatter="invoiceFormatter">类别</th>
                                            <th data-field="id" data-sortable="true" data-formatter="invoiceFormatter">金额</th>
                                            <th data-field="name" data-sortable="true">姓名</th>
                                            <th data-field="date" data-sortable="true" data-formatter="dateFormatter">占比</th>
                                        </tr>
                                        </thead>
                                    </table>
                                </div>
                            </div>
                            <!--===================================================-->

                        </div>
                    </div>
                    <!--===================================================-->

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
                                        <img class="img-circle img-md" src="../nifty/img/profile-photos/6.png"
                                             alt="Profile Picture">
                                    </div>
                                    <a href="#profile-nav" class="box-block" data-toggle="collapse"
                                       aria-expanded="false">
                                            <span class="pull-right dropdown-toggle">
                                                <i class="dropdown-caret"></i>
                                            </span>
                                        <p class="mnp-name">你好,<%=session.getAttribute("username")%></p>
                                        <span class="mnp-desc">当前身份:普通用户</span>
                                    </a>
                                </div>
                                <div id="profile-nav" class="collapse list-group bg-trans">

<%--                                    <a href="#" class="list-group-item">--%>
<%--                                        <i class="pli-gear icon-lg icon-fw"></i> 设置--%>
<%--                                    </a>--%>
<%--                                    <a href="#" class="list-group-item">--%>
<%--                                        <i class="pli-information icon-lg icon-fw"></i> 帮助--%>
<%--                                    </a>--%>
                                    <a href="#" class="list-group-item">
                                        <i class="pli-unlock icon-lg icon-fw"></i> 登出
                                    </a>
                                </div>
                            </div>


                            <!--Shortcut buttons-->
                            <!--================================-->
                            <div id="mainnav-shortcut">

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



                                <!--Category name-->
                                <li class="list-header">功能列表
                                </li>

                                <!--Menu list item-->
                                <li class="">
                                    <a href="#">
                                        <i class="psi-mouse-3"></i>
                                        <span class="menu-title">报销管理</span>
                                        <i class="arrow"></i>
                                    </a>

                                    <!--Submenu-->
                                    <ul class="collapse in">

                                        <li><a href="Normal_homepage">创建报销单</a></li>
                                        <li><a href="My_expense">我的报销单</a></li>
                                        <%--                                        <li><a href="./normal_user/total_reimbursement_data.jsp">报销总数据</a></li>--%>
                                        <li><a href="ChangePersonInformation">修改个人信息</a></li>


                                    </ul>
                                </li>



                            </ul>




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
