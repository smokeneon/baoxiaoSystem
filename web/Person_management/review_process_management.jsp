<%--
  Created by IntelliJ IDEA.
  User: Leondon
  Date: 2019-04-12
  Time: 11:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>欢迎使用报销管理系统</title>


    <!--STYLESHEET-->
    <!--=================================================-->


    <!--Bootstrap Stylesheet [ REQUIRED ]-->
    <link href="./nifty/css/bootstrap.min.css" rel="stylesheet">


    <!--Nifty Stylesheet [ REQUIRED ]-->
    <link href="./nifty/css/nifty.min.css" rel="stylesheet">


    <!--Premium Icons [ OPTIONAL ]-->
    <link href="./nifty/premium/icon-sets/icons/line-icons/premium-line-icons.min.css" rel="stylesheet">
    <link href="./nifty/premium/icon-sets/icons/solid-icons/premium-solid-icons.min.css" rel="stylesheet">
    <link href="./nifty/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
    <link href="./nifty/css/nifty-demo-icons.css" rel="stylesheet">



    <!--JAVASCRIPT-->
    <!--=================================================-->

    <!--Page Load Progress Bar [ OPTIONAL ]-->
    <link href="./nifty/css/pace.min.css" rel="stylesheet">
    <link href="https://cdn.bootcss.com/bootstrap-validator/0.5.3/css/bootstrapValidator.min.css" rel="stylesheet">
    <script src="./nifty/js/pace.min.js"></script>


    <!--jQuery [ REQUIRED ]-->
    <script src="./nifty/js/jquery.min.js"></script>


    <!--BootstrapJS [ RECOMMENDED ]-->
    <script src="./nifty/js/bootstrap.min.js"></script>


    <!--Nifty Admin [ RECOMMENDED ]-->
    <script src="./nifty/js/nifty.min.js"></script>
    <script src="./nifty/plugins/bootstrap-table/bootstrap-table.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap-validator/0.5.3/js/bootstrapValidator.min.js"></script>






</head>

<!--TIPS-->
<!--You may remove all ID or Class names which contain "demo-", they are only used for demonstration. -->

<body>
<%String role=(String) session.getAttribute("role");%>
<%if(role==null){
    request.getRequestDispatcher("../login.jsp").forward(request,response);
}if(!role.contains("管理员")){
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
                <a href="" class="navbar-brand">
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

                                    <!--<img class="img-circle img-user media-object" src="img/av1.png" alt="Profile Picture">-->
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
                <h1 class="page-header text-overflow">审核流程管理</h1>

                <!--Searchbox-->
<%--                <div class="searchbox">--%>
<%--                    <div class="input-group custom-search-form">--%>
<%--                        <input type="text" class="form-control" placeholder="搜索..">--%>
<%--                        <span class="input-group-btn">--%>
<%--                                <button class="text-muted" type="button"><i class="pli-magnifi-glass"></i></button>--%>
<%--                            </span>--%>
<%--                    </div>--%>
<%--                </div>--%>
            </div>
            <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
            <!--End page title-->


            <!--Breadcrumb-->
            <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
            <ol class="breadcrumb">
                <li><a href="#">欢迎</a></li>
                <li class="active">审核流程管理</li>
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
                        <div class="panel-heading">
                            <h3 class="panel-title">账号管理</h3>
                        </div>
                        <div class="panel-body">
                            <!-- Inline Form  -->
                            <!--===================================================-->
                            <form class="form-inline" method="post" action="ProcessAdd">
                                <div class="form-group">
                                    <label for="demo-inline-inputmail" class="sr-only">流程编号</label>
                                    <input type="text" name="process_num" placeholder="流程编号" id="demo-inline-inputmail" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="demo-inline-inputpass" class="sr-only">审核流程管理名称</label>
                                    <input type="text" name="process_name" placeholder="审核流程管理名称" id="demo-inline-inputpass" class="form-control">
                                </div>
                                <!-- <div class="checkbox">
                                    <input id="demo-remember-me" class="magic-checkbox" type="checkbox">
                                    <label for="demo-remember-me">Remember me</label>
                                </div> -->
                                <button class="btn btn-primary" type="submit">添加</button>
                            </form>
                            <!--===================================================-->
                            <!-- End Inline Form  -->
                            <!-- <button id="demo-delete-row" class="btn btn-primary" ><i class="glyphicon glyphicon-plus"></i> 添加</button> -->
                            <table id="demo-custom-toolbar" class="demo-add-niftycheck" data-toggle="table"
                                   data-toolbar="#demo-delete-row"
                                   data-search="true"
                                   data-show-refresh="true"
                                   data-show-toggle="true"
                                   data-show-columns="true"
                                   data-sort-name="id"
                                   data-page-list="[5, 10, 20]"
                                   data-page-size="10"
                                   data-pagination="true"
                                   data-height="600"
                                   data-show-pagination-switch="false"
                                   data-buttons-align="right"
                            >
                                <thead>
                                <tr>
                                    <th data-align="center" data-sortable="true" >序号</th>
                                    <th data-sortable="true">流程编号</th>
                                    <th >流程名称</th>
                                </tr>
                                </thead>
                                <%--                                <tr><td>${Department}</td></tr>--%>
                                <tbody>
                                <% int i = 0;%>
                                <c:forEach  items="${Process}" var="i">
                                    <%--<c:forEach items="${User}"  >--%>
                                    <tr>
                                        <td><%=++i%></td>
                                        <td>${i.process_num}</td>

                                        <td>${i.process_name}</td>
                                    </tr>
                                    <%--</c:forEach>--%>
                                </c:forEach>
                                </tbody>
                            </table>
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
                                        <img class="img-circle img-md" src="./nifty/img/profile-photos/1.png"
                                             alt="Profile Picture">
                                    </div>
                                    <a href="#profile-nav" class="box-block" data-toggle="collapse"
                                       aria-expanded="false">
                                            <span class="pull-right dropdown-toggle">
                                                <i class="dropdown-caret"></i>
                                            </span>
                                        <p class="mnp-name">欢迎,<%=session.getAttribute("username")%></p>
                                        <span class="mnp-desc">当前身份：管理员</span>
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
                                <ul class="list-unstyled shortcut-wrap">

                                </ul>
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
                                <li class="list-header">功能列表</li>

                                <!--Menu list item-->
                                <li class="">
                                    <a href="#">
                                        <i class="psi-mouse-3"></i>
                                        <span class="menu-title">审核流程管理</span>
                                        <i class="arrow"></i>
                                    </a>

                                    <!--Submenu-->
                                    <ul class="collapse in">

                                        <li><a href="DepartmentList">部门管理</a></li>
                                        <li><a href="OfficeList">办公室管理</a></li>
                                        <li><a href="ProcessList">审核流程管理</a></li>
                                        <li><a href="ListUser">用户管理</a></li>


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
