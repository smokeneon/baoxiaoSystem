<%--
  Created by IntelliJ IDEA.
  User: Leondon
  Date: 2019-04-12
  Time: 11:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

    <link href="./nifty/demo/nifty-demo.css" rel="stylesheet">
    <link href="./nifty/demo/nifty-demo-icons.css" rel="stylesheet">
    <!--Premium Icons [ OPTIONAL ]-->
    <link href="./nifty/premium/icon-sets/icons/line-icons/premium-line-icons.min.css" rel="stylesheet">
    <link href="./nifty/premium/icon-sets/icons/solid-icons/premium-solid-icons.min.css" rel="stylesheet">
    <link href="./nifty/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">

    <link href="./nifty/css/nifty-demo-icons.css" rel="stylesheet">
    <!--Magic Checkbox [ OPTIONAL ]-->
    <link href="./nifty/plugins/magic-check/css/magic-check.min.css" rel="stylesheet">
    <%--<link href="http://www.niftyadmin.cn/html/nifty/plugins/magic-check/css/magic-check.min.css" rel="stylesheet">--%>

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
    <script src="./nifty/plugins/bootstrap-table/extensions/toolbar/bootstrap-table-toolbar.js"></script>
    <!--Bootbox Modals [ OPTIONAL ]-->
    <%--<script src="http://www.niftyadmin.cn/html/nifty/plugins/bootbox/bootbox.min.js"></script>--%>
    <!--Modals [ SAMPLE ]-->
    <script src="./nifty/plugins/bootstrap-modal/ui-modals.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap-validator/0.5.3/js/bootstrapValidator.min.js"></script>
 <style>
     .serch-bar .form-group{
         padding: 5px 1px;
     }
     .modal-form .form-group{
         padding: 3px 0px;
     }
 </style>






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
                <a href="./index.jsp" class="navbar-brand">
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
<%--                            <ul class="head-list">--%>

<%--                                <li>--%>
<%--                                    <a href="#">--%>
<%--                                        <span class="badge badge-danger pull-right">9</span>--%>
<%--                                        <i class="pli-mail icon-fw icon-lg"></i> 信息--%>
<%--                                    </a>--%>
<%--                                </li>--%>
<%--                                <li>--%>
<%--                                    <a href="#">--%>
<%--                                        <span class="label label-success pull-right">New</span>--%>
<%--                                        <i class="pli-gear icon-fw icon-lg"></i> 设置--%>
<%--                                    </a>--%>
<%--                                </li>--%>
<%--                            </ul>--%>

                            <!-- Dropdown footer -->
<%--                            <div class="pad-all text-right">--%>
<%--                                <a href="Logout" class="btn btn-primary">--%>
<%--                                    <i class="pli-unlock icon-fw"></i> 登出--%>
<%--                                </a>--%>
<%--                            </div>--%>
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
                <h1 class="page-header text-overflow">用户管理</h1>

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
                <li class="active">用户管理</li>
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
                            <h3 class="panel-title">用户管理：增加、编辑、删除</h3>
                        </div>
                        <div class="panel-body">
                         <button data-target="#register-userAdd-modal" data-toggle="modal" class="btn btn-primary btn-lg">添加新账户</button><br><br>
                            <table id="demo-custom-toolbar" class="demo-add-niftycheck" data-toggle="table"

                                   data-toolbar="#demo-delete-row"
                                   data-search="true"
                                   data-multiple-search="true"
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
                                   advancedSearch="true"
                            >
                                <thead>
                                <tr>
                                    <th data-sortable="true">序号</th>
                                    <th data-sortable="true">工号</th>
                                    <th>姓名</th>
                                    <th>账号</th>
                                    <th>角色</th>
                                    <th>办公室</th>
                                    <th>部门</th>
                                    <th>上级主管</th>
                                    <th>审核流程</th>
                                    <th>手机号</th>
                                    <th>支付宝</th>
                                    <th>操作</th>

                                </tr>
                                </thead>

                               <tbody>
                               <% int i = 0;%>
                               <c:forEach  items="${User}" var="o">

                                    <tr>
                                        <td><%=++i%></td>
                                        <td>${o.user_num}</td>

                                        <td>${o.user_name}</td>
                                        <td>${o.username}</td>
                                        <td>${o.role}</td>

                                        <td>${o.office_num}</td>
<%--                                        <td>${o.office_num}</td>--%>
                                        <td>${o. department_num}</td>
                                        <td>${o. director_name}</td>
                                        <td>${o. process_num}</td>
                                        <td>${o. user_telephone}</td>
                                        <td>${o. alipay}</td>
                                        <td>${o. process_num}</td>
                                        <td> <button class="btn btn-info btn-sm" onclick="userEdit('${o.username}')">编辑</button>&nbsp<button onclick="userDelete('${o.username}')" class="btn btn-danger btn-sm">删除</button> </td>
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
                                        <span class="menu-title">人员管理</span>
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
<!--Default Bootstrap Modal-->
<!--===================================================-->
<div class="modal fade" id="register-userAdd-modal" role="dialog" tabindex="-1" aria-labelledby="register-default-modal"
     aria-hidden="true" >
    <div class="modal-dialog" style="width: 450px">
        <div class="modal-content">
            <!--Modal header-->
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">
                    <i class="pci-cross pci-circle"></i>
                </button>
                <h4 class="modal-title">
                   添加新账户</h4>
            </div>
            <!--Modal body-->
            <div class="modal-body">
               <form action="AddUser" method="post">
                   <fieldset>
                       <div class="modal-form">
                           <div class="form-group">
                               <label class="col-lg-3 control-label">工号</label>
                               <div class="col-lg-7">
                                   <input  name="user_num" type="text" class="form-control" placeholder="工号">
                               </div>
                           </div>
                           <br>
                           <div class="form-group">
                               <label class="col-lg-3 control-label">姓名</label>
                               <div class="col-lg-7">
                                   <input  name="user_name" type="text" class="form-control" placeholder="请输入您的姓名">
                               </div>
                           </div>
                           <br>
                           <div class="form-group">
                               <label class="col-lg-3 control-label">办公城市</label>
                               <div class="col-lg-7">
                                   <input  name="work_city" type="text" class="form-control" placeholder="请输入您的办公地点">
                               </div>
                           </div>
                           <br>
                           <div class="form-group">
                               <label class="col-lg-3 control-label">办公室</label>
                               <div class="col-lg-7">
                                   <select name="office_num" id="demo-select2" class="demo_select2 form-control" >
                                       <!-- <optgroup label="Alaskan/Hawaiian Time Zone"> -->
                                       <option value="">请选择</option>
                                       <option value="BGS-003">西安</option>
                                       <option value="BGS-002">南京</option>
                                       <option value="BGS-001">长沙</option>
                                       <!-- </optgroup> -->
                                   </select>
                               </div>
                           </div>
                           <br>
                           <div class="form-group">
                               <label class="col-lg-3 control-label">部门</label>
                               <div class="col-lg-7">
                                   <select name="department_num" id="demo-select3" class="demo_select2 form-control"  >
                                       <!-- <optgroup label="Alaskan/Hawaiian Time Zone"> -->
                                       <option value="">请选择</option>
                                       <option value="BM-001">软件开发部</option>
                                       <option value="BM-002">销售部</option>
                                       <option value="BM-003">运营部</option>
                                       <option value="BM-004">产品部</option>
                                       <option value="BM-005">其他</option>
                                       <!-- </optgroup> -->
                                   </select>
                               </div>
                           </div>
                           <br>
                           <div class="form-group">
                               <label class="col-lg-3 control-label">上级主管</label>
                               <div class="col-lg-7">
                                   <select name="director_name" id="demo-select3" class="demo_select2 form-control"  >
                                       <!-- <optgroup label="Alaskan/Hawaiian Time Zone"> -->
                                       <option value="">请选择</option>
                                       <option value="张元彤">张元彤</option>
                                       <option value="王博涵">王博涵</option>
                                       <option value="秦志鹏">秦志鹏</option>
                                       <option value="杨镇豪">杨镇豪</option>
                                       <option value="其他">其他</option>
                                       <!-- </optgroup> -->
                                   </select>
                               </div>
                           </div>
                           <br>
                           <div class="form-group">
                               <label class="col-lg-3 control-label">审核流程</label>
                               <div class="col-lg-7">
                                   <select name="process_num" id="demo-select3" class="demo_select2 form-control" name="qzyx" lay-verify="qzyx">
                                       <!-- <optgroup label="Alaskan/Hawaiian Time Zone"> -->
                                       <option value="">请选择</option>
                                       <option value="LCXA-001">软件开发部-西安办公室-财务部</option>
                                       <option value="LCXA-002">销售部-西安办公室-财务部</option>
                                       <option value="LCXA-003">运营部-西安办公室-财务部</option>
                                       <option value="LCXA-004">产品部-西安办公室-财务部</option>
                                       <option value="LCCS-001">软件开发部-长沙办公室-财务部</option>
                                       <option value="LCCS-002">销售部-长沙办公室-财务部</option>
                                       <option value="LCCS-003">运营部-长沙办公室-财务部</option>
                                       <option value="LCCS-004">产品部-长沙办公室-财务部</option>
                                       <option value="LCNJ-001">软件开发部-南京办公室-财务部</option>
                                       <option value="LCNJ-002">销售部-南京办公室-财务部</option>
                                       <option value="LCNJ-003">运营部-南京办公室-财务部</option>
                                       <option value="LCNJ-004">产品部-南京办公室-财务部</option>

                                       <!-- </optgroup> -->
                                   </select>
                               </div>
                           </div>
                           <br>
                           <div class="form-group">
                               <label class="col-lg-3 control-label">帐号</label>
                               <div class="col-lg-7">
                                   <input lay-verify="name" name="username" type="text" class="form-control" placeholder="请输入您的登录账号">
                               </div>
                           </div>
                           <br>
                           <div class="form-group">
                               <label class="col-lg-3 control-label">密码</label>
                               <div class="col-lg-7">
                                   <input  name="password" type="password" class="form-control" placeholder="请输入您的密码">
                               </div>
                           </div>
                           <br>
                           <div class="form-group">
                               <label class="col-lg-3 control-label">手机号</label>
                               <div class="col-lg-7">
                                   <input  name="user_telephone" type="text" class="form-control" placeholder="请输入您的电话">
                               </div>
                           </div>
                           <br>
                           <div class="form-group">
                               <label class="col-lg-3 control-label">支付宝账号</label>
                               <div class="col-lg-7">
                                   <input  name="alipay" type="text" class="form-control" placeholder="请输入您的支付宝账号">
                               </div>
                           </div>
                           <br>
                           <div class="form-group pad-ver">
                               <label class="col-md-3 control-label">
                                   角色</label>
                               <div class="col-md-9">
                                   <div class="checkbox">
                                       <!-- Inline Checkboxes -->

                                       <input id="demo-form-inline-checkbox" name="role" value="管理员" class="magic-checkbox" type="checkbox">
                                       <label for="demo-form-inline-checkbox">管理员 </label>

                                       <input id="demo-form-inline-checkbox-2" name="role" value="财务人员" class="magic-checkbox" type="checkbox">
                                       <label for="demo-form-inline-checkbox-2">财务人员 </label>

                                       <input id="demo-form-inline-checkbox-4" name="role" value="审批人员" class="magic-checkbox" type="checkbox">
                                       <label for="demo-form-inline-checkbox-4">审批人员 </label>

                                       <input id="demo-form-inline-checkbox-3" name="role" value="普通用户" class="magic-checkbox" type="checkbox">
                                       <label for="demo-form-inline-checkbox-3">普通用户 </label>


                                   </div>
                               </div>
                           </div>
                           <br>
                           <!--Modal footer-->
                           <div class="form-group">
                               <label class="col-lg-3 control-label"></label>
                               <div class="col-lg-7">
                                   <div class="modal-footer">
                                       <button data-dismiss="modal" class="btn btn-default" type="button">
                                           关闭</button>
                                       <button class="btn btn-primary" type="submit">
                                           添加</button>
                                   </div>
                               </div>
                           </div>
                       </div>



                   </fieldset>
               </form>


        </div>
    </div>
</div>



</div>



<!--===================================================-->
<div class="modal fade" id="register-userEdit-modal" role="dialog" tabindex="-1" aria-labelledby="register-default-modal"
     aria-hidden="true" >
    <div class="modal-dialog" style="width: 450px">
        <div class="modal-content">
            <!--Modal header-->
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">
                    <i class="pci-cross pci-circle"></i>
                </button>
                <h4 class="modal-title">
                    编辑账户</h4>
            </div>
            <!--Modal body-->
            <div class="modal-body">
                <form action="UserUpdate" method="post">
                    <fieldset>
                        <div class="modal-form">
                            <div class="form-group">
                                <label class="col-lg-3 control-label">账号</label>
                                <div class="col-lg-7">
                                    <input  id="username_edit"   name="username_edit" type="text" class="form-control" placeholder="工号" readonly="readonly">

                                </div>
                            </div>
                            <br>
                            <div class="form-group">
                                <label class="col-lg-3 control-label">更改工号</label>
                                <div class="col-lg-7">
                                    <input  id="user_num_edit" name="user_num_edit" type="text" class="form-control" placeholder="工号">
                                </div>
                            </div>
                            <br>
                            <div class="form-group">
                                <label class="col-lg-3 control-label">更改姓名</label>
                                <div class="col-lg-7">
                                    <input  id="user_name_edit" name="user_name_edit" type="text" class="form-control" placeholder="请输入您的姓名">
                                </div>
                            </div>
                            <br>
                            <div class="form-group">
                                <label class="col-lg-3 control-label">更改办公城市</label>
                                <div class="col-lg-7">
                                    <input  id="work_city_edit" name="work_city_edit" type="text" class="form-control" placeholder="请输入您的办公地点">
                                </div>
                            </div>
                            <br>
                            <div class="form-group">
                                <label class="col-lg-3 control-label">更改办公室</label>
                                <div class="col-lg-7">
                                    <select name="office_num_edit" id="demo-select" class="demo_select2 form-control" >
                                        <!-- <optgroup label="Alaskan/Hawaiian Time Zone"> -->
                                        <option value="">请选择</option>
                                        <option value="BGS-003">西安</option>
                                        <option value="BGS-002">南京</option>
                                        <option value="BGS-001">长沙</option>
                                        <!-- </optgroup> -->
                                    </select>
                                </div>
                            </div>
                            <br>
                            <div class="form-group">
                                <label class="col-lg-3 control-label">更改部门</label>
                                <div class="col-lg-7">
                                    <select name="department_num_edit" id="demo-select3" class="demo_select2 form-control"  >
                                        <!-- <optgroup label="Alaskan/Hawaiian Time Zone"> -->
                                        <option value="">请选择</option>
                                        <option value="BM-001">软件开发部</option>
                                        <option value="BM-002">销售部</option>
                                        <option value="BM-003">运营部</option>
                                        <option value="BM-004">产品部</option>
                                        <option value="BM-005">其他</option>
                                        <!-- </optgroup> -->
                                    </select>
                                </div>
                            </div>
                            <br>
                            <div class="form-group">
                                <label class="col-lg-3 control-label">更改上级主管</label>
                                <div class="col-lg-7">
                                        <select name="director_name_edit" id="demo-select4" class="demo_select2 form-control"  >
                                            <option value="">请选择</option>
                                            <option value="张元彤">张元彤</option>
                                            <option value="王博涵">王博涵</option>
                                            <option value="秦志鹏">秦志鹏</option>
                                            <option value="杨镇豪">杨镇豪</option>
                                            <option value="其他">其他</option>
                                        </select>
                                </div>
                            </div>
                            <br>
                            <div class="form-group">
                                <label class="col-lg-3 control-label">更改审核流程</label>
                                <div class="col-lg-7">
                                    <select name="process_num_edit" id="demo-select3" class="demo_select2 form-control" name="qzyx" lay-verify="qzyx">
                                        <!-- <optgroup label="Alaskan/Hawaiian Time Zone"> -->
                                        <option value="">请选择</option>
                                        <option value="LCXA-001">软件开发部-西安办公室-财务部</option>
                                        <option value="LCXA-002">销售部-西安办公室-财务部</option>
                                        <option value="LCXA-003">运营部-西安办公室-财务部</option>
                                        <option value="LCXA-004">产品部-西安办公室-财务部</option>
                                        <option value="LCCS-001">软件开发部-长沙办公室-财务部</option>
                                        <option value="LCCS-002">销售部-长沙办公室-财务部</option>
                                        <option value="LCCS-003">运营部-长沙办公室-财务部</option>
                                        <option value="LCCS-004">产品部-长沙办公室-财务部</option>
                                        <option value="LCNJ-001">软件开发部-南京办公室-财务部</option>
                                        <option value="LCNJ-002">销售部-南京办公室-财务部</option>
                                        <option value="LCNJ-003">运营部-南京办公室-财务部</option>
                                        <option value="LCNJ-004">产品部-南京办公室-财务部</option>

                                        <!-- </optgroup> -->
                                    </select>
                                </div>
                            </div>
                            <br>
                            <div class="form-group">
                                <label class="col-lg-3 control-label">更改手机号</label>
                                <div class="col-lg-7">
                                    <input id="user_telephone" name="user_telephone_edit" type="text" class="form-control" placeholder="请输入您的电话">
                                </div>
                            </div>
                            <br>
                            <div class="form-group">
                                <label class="col-lg-3 control-label">更改支付宝</label>
                                <div class="col-lg-7">
                                    <input id="alipay"  name="alipay_edit" type="text" class="form-control" placeholder="请输入您的支付宝账号">
                                </div>
                            </div>
                            <br>

                            <div class="form-group">
                                <label class="col-lg-3 control-label">更改密码</label>
                                <div class="col-lg-7">
                                    <input id="password_edit"  name="password_edit" type="text" class="form-control" placeholder="请输入您的姓名">
                                </div>
                            </div>
                            <br>
                            <div class="form-group pad-ver">
                                <label class="col-md-3 control-label">
                                    角色</label>
                                <div class="col-md-9">
                                    <div class="checkbox">
                                        <!-- Inline Checkboxes -->

                                        <input id="demo-form-inline-checkbox4" name="role_edit" value="管理员" class="magic-checkbox" type="checkbox">
                                        <label for="demo-form-inline-checkbox4">管理员 </label>

                                        <input id="demo-form-inline-checkbox-5" name="role_edit" value="财务人员" class="magic-checkbox" type="checkbox">
                                        <label for="demo-form-inline-checkbox-5">财务人员 </label>

                                        <input id="demo-form-inline-checkbox-7" name="role_edit" value="审批人员" class="magic-checkbox" type="checkbox">
                                        <label for="demo-form-inline-checkbox-7">审批人员 </label>

                                        <input id="demo-form-inline-checkbox-6" name="role_edit" value="普通用户" class="magic-checkbox" type="checkbox">
                                        <label for="demo-form-inline-checkbox-6">普通用户 </label>
                                    </div>
                                </div>
                            </div>
                            <br>
                            <!--Modal footer-->
                            <div class="form-group">
                                <label class="col-lg-3 control-label"></label>
                                <div class="col-lg-7">
                                    <div class="modal-footer">
                                        <button data-dismiss="modal" class="btn btn-default" type="button">
                                            关闭</button>
                                        <button class="btn btn-primary" type="submit">
                                            更新</button>
                                    </div>
                                </div>
                            </div>
                        </div>



                    </fieldset>
                </form>


            </div>
        </div>
    </div>



</div>

</body>
<script type="text/javascript">
    function userEdit(username){

        $.ajax({
            type: "post",
            url: "UserEditAll",
            data: {
                username:username
            },
            dataType:'json',
            success:function(user){
                // alert("user="+user);

                $("#username_edit").val(user.username);

                $("#user_num_edit").val(user.user_num);
                $("#user_name_edit").val(user.user_name);

                $("#work_city_edit").val(user.work_city);
                $("#department_num_edit").val(user.department_num);
                $("#office_num_edit").val(user.office_num);
                $("#director_name_edit").val(user.director_name);
                $("#process_num_edit").val(user.process_num);
                // $("#password_edit").val(user.password);
                $("#user_telephone").val(user.user_telephone);
                $("#alipay").val(user.alipay);
                $("#role_edit").val(user.role);

                $('#register-userEdit-modal').modal('show');
            }
        });
    }

    function userDelete(username) {
        $.ajax({
            type:"post",
            url:"UserDelete",
            data:{
                "username_userDelete" : username
            },
            success:function(result){
            location.reload();
            }
        })
    }
</script>

<script>
    $(function () {
        $('form').bootstrapValidator({

            message: 'This value is not valid',
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                user_name: {
                    message: '用户姓名验证失败',
                    validators: {
                        notEmpty: {
                            message: '用户姓名不能为空'
                        },
                        stringLength: {
                            min: 2,
                            max: 20,
                            message: '用户姓名长度必须在2到20位之间'
                        },

                    }
                },

                office_num: {
                    message: '办公室验证失败',
                    validators: {
                        notEmpty: {
                            message: '办公室不能为空'
                        }
                    }
                },
                department_num: {
                    message: '部门验证失败',
                    validators: {
                        notEmpty: {
                            message: '部门不能为空'
                        }
                    }
                },
                username: {
                    message: '用户名验证失败',
                    validators: {
                        notEmpty: {
                            message: '用户名不能为空'
                        }
                    }
                },
                user_telephone:{
                    message: '手机号验证失败',
                    validators: {
                        notEmpty: {
                            message: '手机号不能为空'
                        }
                    }
                },
                alipay:{
                    message: '支付宝验证失败',
                    validators: {
                        notEmpty: {
                            message: '支付宝不能为空'
                        }
                    }
                },
                password:{
                    message: '密码验证失败',
                    validators: {
                        notEmpty: {
                            message: '密码不能为空'
                        }
                    }
                },
                role:{
                    message: '角色验证失败',
                    validators: {
                        notEmpty: {
                            message: '角色不能为空'
                        }
                    }
                },

                user_name_edit: {
                    message: '用户姓名验证失败',
                    validators: {
                        notEmpty: {
                            message: '用户姓名不能为空'
                        },
                        stringLength: {
                            min: 2,
                            max: 20,
                            message: '用户姓名长度必须在2到20位之间'
                        },

                    }
                },

                office_num_edit: {
                    message: '办公室验证失败',
                    validators: {
                        notEmpty: {
                            message: '办公室不能为空'
                        }
                    }
                },
                department_num_edit: {
                    message: '部门验证失败',
                    validators: {
                        notEmpty: {
                            message: '部门不能为空'
                        }
                    }
                },
                username_edit: {
                    message: '用户名验证失败',
                    validators: {
                        notEmpty: {
                            message: '用户名不能为空'
                        }
                    }
                },
                user_telephone_edit:{
                    message: '手机号验证失败',
                    validators: {
                        notEmpty: {
                            message: '手机号不能为空'
                        }
                    }
                },
                alipay_edit:{
                    message: '支付宝验证失败',
                    validators: {
                        notEmpty: {
                            message: '支付宝不能为空'
                        }
                    }
                },
                password_edit:{
                    message: '密码验证失败',
                    validators: {
                        notEmpty: {
                            message: '密码不能为空'
                        }
                    }
                },
                role_edit:{
                    message: '角色验证失败',
                    validators: {
                        notEmpty: {
                            message: '角色不能为空'
                        }
                    }
                },


            }
        });
    });
</script>
</html>
