<%--
  Created by IntelliJ IDEA.
  User: leondon
  Date: 19-4-17
  Time: 下午10:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>修改个人信息</title>


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
    <link href="./nifty/plugins/magic-check/css/magic-check.min.css" rel="stylesheet">
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




    <style>
        .form-group{
            padding: 5px 1px;
        }
    </style>

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
                <h1 class="page-header text-overflow">修改个人信息</h1>

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
                <li class="active">修改个人信息</li>
            </ol>
            <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
            <!--End breadcrumb-->




            <!--Page content-->
            <!--===================================================-->
            <div id="page-content">


                <div class="col-sm-3"></div>
                <div class="col-sm-6">

                    <!--Custom Toolbar-->
                    <!--===================================================-->
                    <div class="panel">
                        <div class="panel-heading">
                            <h3 class="panel-title">修改个人信息</h3>
                        </div>
                        <div class="panel-body">
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
                                                <select   id="demo-select2" class="demo_select2 form-control" name="office_num_edit" lay-verify="qzyx">
                                                    <!-- <optgroup label="Alaskan/Hawaiian Time Zone"> -->
                                                    <option value="">请选择</option>
                                                    <option value="长沙">长沙</option>
                                                    <option value="南稍门">南稍门</option>
                                                    <!-- </optgroup> -->
                                                </select>
                                            </div>
                                        </div>
                                        <br>
                                        <div class="form-group">
                                            <label class="col-lg-3 control-label">更改部门</label>
                                            <div class="col-lg-7">
                                                <input  id="department_num_edit" name="department_num_edit" type="text" class="form-control" placeholder="请输入您的姓名">
                                            </div>
                                        </div>
                                        <br>
                                        <div class="form-group">
                                            <label class="col-lg-3 control-label">更改上级主管</label>
                                            <div class="col-lg-7">
                                                <input  id="director_name_edit" name="director_name_edit" type="text" class="form-control" placeholder="请输入您的姓名">
                                            </div>
                                        </div>
                                        <br>
                                        <div class="form-group">
                                            <label class="col-lg-3 control-label">更改审核流程</label>
                                            <div class="col-lg-7">
                                                <select   class="demo_select2 form-control" name="process_num_edit" lay-verify="qzyx">
                                                    <!-- <optgroup label="Alaskan/Hawaiian Time Zone"> -->
                                                    <option value="">请选择</option>
                                                    <option value="ABCDE">A-B-C-D-E</option>
                                                    <option value="aaa">B-C-A-B</option>
                                                    <!-- </optgroup> -->
                                                </select>
                                            </div>
                                        </div>
                                        <br>
                                        <div class="form-group">
                                            <label class="col-lg-3 control-label">更改手机号</label>
                                            <div class="col-lg-7">
                                                <input id="user_telephone" name="user_telephone" type="text" class="form-control" placeholder="请输入您的电话">
                                            </div>
                                        </div>
                                        <br>
                                        <div class="form-group">
                                            <label class="col-lg-3 control-label">更改支付宝</label>
                                            <div class="col-lg-7">
                                                <input id="alipay"  name="alipay" type="text" class="form-control" placeholder="请输入您的支付宝账号">
                                            </div>
                                        </div>
                                        <br>

                                        <div class="form-group">
                                            <label class="col-lg-3 control-label">更改密码</label>
                                            <div class="col-lg-7">
                                                <input id="password_edit"  name="password_edit" type="password" class="form-control" placeholder="请输入您的姓名">
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
                                        <img class="img-circle img-md" src="./nifty/img/profile-photos/6.png"
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
<script type="text/javascript">
    window.onload = function (){

            $.ajax({
                type: "post",
                url: "UserEdit",

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

                }
            });
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
                username_edit: {
                    message: '用户名验证失败',
                    validators: {
                        notEmpty: {
                            message: '账户名不能为空'
                        },
                        stringLength: {
                            min: 2,
                            max: 20,
                            message: '用户长度必须在2到20位之间'
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
