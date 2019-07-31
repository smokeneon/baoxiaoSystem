<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
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
    <title>创建报销单</title>


    <!--Bootstrap Stylesheet [ REQUIRED ]-->
    <link href="./nifty/css/bootstrap.min.css" rel="stylesheet">


    <!--Nifty Stylesheet [ REQUIRED ]-->
    <link href="./nifty/css/nifty.min.css" rel="stylesheet">
<%--    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">--%>
    <link href="http://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="./nifty/css/demo/nifty-demo-icons.min.css">


    <!--Premium Icons [ OPTIONAL ]-->
    <link href="./nifty/premium/icon-sets/icons/line-icons/premium-line-icons.min.css" rel="stylesheet">
    <link href="./nifty/premium/icon-sets/icons/solid-icons/premium-solid-icons.min.css" rel="stylesheet">
    <link href="./nifty/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
    <link href="./nifty/css/nifty-demo-icons.css" rel="stylesheet">



    <!--JAVASCRIPT-->
    <!--=================================================-->

    <!--Page Load Progress Bar [ OPTIONAL ]-->
    <link href="./nifty/css/pace.min.css" rel="stylesheet">
<%--    <link href="../nifty/css/bootstrap-inputfile.css">--%>
    <link href="https://cdn.bootcss.com/bootstrap-fileinput/5.0.1/css/fileinput.css" rel="stylesheet">
    <link href="https://cdn.bootcss.com/bootstrap-validator/0.5.3/css/bootstrapValidator.min.css" rel="stylesheet">
    <link href="https://cdn.bootcss.com/bootstrap-datepicker/1.8.0/css/bootstrap-datepicker.min.css" rel="stylesheet">
    <script src="./nifty/js/jquery.min.js"></script>
    <script src="./nifty/js/pace.min.js"></script>


    <!--jQuery [ REQUIRED ]-->



    <!--BootstrapJS [ RECOMMENDED ]-->
    <script src="./nifty/js/bootstrap.min.js"></script>


    <!--Nifty Admin [ RECOMMENDED ]-->
    <script src="./nifty/js/nifty.min.js"></script>
    <script src="./nifty/plugins/bootstrap-table/bootstrap-table.min.js"></script>
<%--    <script src="../nifty/css/bootstrap-inputfile.js"></script>--%>
    <script src="https://cdn.bootcss.com/bootstrap-fileinput/5.0.1/js/fileinput.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap-validator/0.5.3/js/bootstrapValidator.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap-datepicker/1.8.0/js/bootstrap-datepicker.min.js"></script>




</head>
<style>
    .form-group{
        padding:15px 1px;
    }
</style>

<!--TIPS-->
<!--You may remove all ID or Class names which contain "demo-", they are only used for demonstration. -->

<body>
<%String role=(String) session.getAttribute("role");%>
<%if(role==null){
    request.getRequestDispatcher("../login.jsp").forward(request,response);
}
    if(!role.contains("普通用户")){
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

<%--                                    <i class="pli-male"></i>--%>
                                </span>
<%--                            <div class="username hidden-xs">John Doe</div>--%>
                        </a>


                        <div class="dropdown-menu dropdown-menu-md dropdown-menu-right panel-default">



                            <!-- User dropdown menu -->


<%--                            <!-- Dropdown footer -->--%>
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
                <h1 class="page-header text-overflow">创建报销单</h1>

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
                <li class="active">创建报销单</li>
            </ol>
            <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
            <!--End breadcrumb-->




            <!--Page content-->
            <!--===================================================-->
            <div id="page-content">
                <div class="col-lg-2"></div>
                <div class="col-lg-8">
                    <div class="panel">
                        <div class="panel-heading">
                            <h3 class="panel-title">创建报销单</h3>
                        </div>

                        <form method="post" action="createExpense">
                            <div class="panel-body">

                                <p class="bord-btm pad-ver text-main text-bold">个人信息</p>
                                <br>
                                <fieldset>

                                    <%
                                        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
                                        String value = format.format(new Date());
                                    %>
                                    <div class="form-group">
                                        <label class="col-lg-3 control-label">当前日期</label>
                                        <div class="col-lg-7">
                                            <input value="<%=value%>" type="text"  class="form-control" name="create_current_date" placeholder="当前日期" readonly="readonly">
                                            <input value="<%=session.getAttribute("usernameid")%>" name="create_username" hidden>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-lg-3 control-label">所属办公室</label>
                                        <div class="col-lg-7">
                                            <input id="office_name_creat"   type="text" class="form-control"   placeholder="请输入您的审批人员" readonly="readonly">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-lg-3 control-label">所属部门</label>
                                        <div class="col-lg-7">
                                            <input type="text" class="form-control" readonly="readonly" id="department_name_creat"  placeholder="请输入您的付款人员">
                                        </div>
                                    </div>
                                   <%
                                        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMddHHmmssSSS");
                                        String format2 = dateFormat.format(new Date());
                                        String expense_num = "BXD_"+session.getAttribute("usernameid")+format2;
                                        request.setAttribute("expense_num_create",expense_num);
//                                        request.getRequestDispatcher("normal_user/create_expense_uploadFile.jsp").forward(request,response);
                                    %>
                                    <div class="form-group">
                                        <label class="col-lg-3 control-label">当前报表单号</label>
                                        <div class="col-lg-7">
                                            <input type="text" value="<%=request.getAttribute("expense_num_create")%>"  class="form-control" readonly="readonly" name="expense_num"  placeholder="自动生成报销单号">
                                        </div>
                                    </div>

                                </fieldset>
                                <p class="bord-btm pad-ver text-main text-bold">报销单详情
                                </p>
                                <br>


                                <fieldset>
                                    <div class="form-group" id='datetimepicker2'>
                                        <label class="col-lg-3 control-label">消费日期</label>
                                        <div class="col-lg-7">
                                            <!-- <input type="text" class="form-control" class="layui-input" name="csrq" id="csrq" placeholder="请输入出生日期"> -->

                                            <div id="demo-dp-component">
                                                <div class="input-group date">
                                                    <input type="text" name="creat_consumption_date" id="csrq"  class="form-control" placeholder="请输入消费日期">
                                                    <span class="input-group-addon"><i class="demo-pli-calendar-4"></i></span>
                                                </div>
                                                <!-- <small class="text-muted">Auto close on select</small> -->
                                            </div>

                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-lg-3 control-label">费用类别</label>
                                        <div class="col-lg-7">
                                            <select name="create_cost_category" class="demo_select2 form-control" >
                                                <!-- <optgroup label="Alaskan/Hawaiian Time Zone"> -->
                                                <option value="">请选择</option>
                                                <option value="交通费">交通费</option>
                                                <option value="住宿费">住宿费</option>
                                                <option value="额外费用">额外费用</option>
                                                <option value="其他">其他</option>
                                                <!-- </optgroup> -->
                                            </select>
                                        </div>
                                    </div>


                                    <div class="form-group">
                                        <label class="col-lg-3 control-label">消费金额</label>
                                        <div class="col-lg-7">
                                            <input name="create_fee" type="text" class="form-control" placeholder="请输入您的消费金额">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-lg-3 control-label">发票类型</label>
                                        <div class="col-lg-7">
                                            <select name="create_invoice_type" id="demo-select2" class="demo_select2 form-control"  >
                                                <!-- <optgroup label="Alaskan/Hawaiian Time Zone"> -->
                                                <option value="">请选择</option>
                                                <option value="增值税普通发票">增值税普通发票</option>
                                                <option value="增值税专用发票">增值税专用发票</option>
                                                <option value="普通机打发票">普通机打发票</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-lg-3 control-label">报销事由</label>
                                        <div class="col-lg-7">
                                            <!-- <input id="gznr" name ="gznr" type="text" class="form-control" name="csrq" placeholder="请输入出生日期"> -->
                                            <textarea name="create_reimbursement_reasons"  placeholder="请输入报销事由" rows="6" class="form-control"></textarea>
                                        </div>
                                    </div>


<%--                                    <form>--%>
<%--                                        <div class="form-group">--%>
<%--                                            <label class="col-lg-3 control-label">附件</label>--%>
<%--                                            <div class="col-lg-7">--%>
<%--										<span class="file-upload">--%>
<%--											<!-- <label class="control-label">上传简历</label> -->--%>
<%--											<input id="file" type="file" class="file" name="create_file">--%>
<%--                                            <!-- <input type="file" name="file" class="change-button"> 上传简历附件 -->--%>
<%--										</span>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </form>--%>





                                </fieldset>
                            </div>

                            <div class="panel-footer">
                                <div class="row col-lg-10" style="text-align:right">
                                    <!-- <div class="col-sm-7 col-sm-offset-3"> -->
                                    <button class="btn btn-primary" type="submit">下一步</button>
                                    <!-- </div> -->
                                </div>
                            </div>
                            <br><br><br>
                        </form>
                    </div>
                </div>


                <div class="col-lg-2"></div>

<%--                <div class="col-sm-12">--%>

<%--                    <!--Custom Toolbar-->--%>
<%--                    <!--===================================================-->--%>
<%--                    <div class="panel">--%>
<%--                        <div class="panel-heading">--%>
<%--                            <h3 class="panel-title">创建报销单</h3>--%>
<%--                        </div>--%>
<%--                        <div class="panel-body">--%>
<%--                            <h1>创建一张报销单</h1>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <!--===================================================-->--%>

<%--                </div>--%>

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
                                        <p class="mnp-name">欢迎,<%=session.getAttribute("username")%></p>
                                        <span class="mnp-desc">Leon@hooc.top</span>
                                    </a>
                                </div>
                                <div id="profile-nav" class="collapse list-group bg-trans">

<%--                                    <a href="#" class="list-group-item">--%>
<%--                                        <i class="pli-gear icon-lg icon-fw"></i> 设置--%>
<%--                                    </a>--%>
<%--                                    <a href="#" class="list-group-item">--%>
<%--                                        <i class="pli-information icon-lg icon-fw"></i> 帮助--%>
<%--                                    </a>--%>
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
                expense_sum: {
                    message: '报销单号验证失败',
                    validators: {
                        notEmpty: {
                            message: '报销单号不能为空'
                        },

                    }
                },

                creat_consumption_date: {
                    message: '消费日期验证失败',
                    validators: {
                        notEmpty: {
                            message: '消费日期不能为空'
                        }
                    }
                },
                create_cost_category: {
                    message: '类别验证失败',
                    validators: {
                        notEmpty: {
                            message: '类别不能为空'
                        }
                    }
                },
                create_invoice_type:{
                    message: '发票验证失败',
                    validators: {
                        notEmpty: {
                            message: '发票类型不能为空'
                        }
                    }
                }


            }
        });
    });
</script>
<script>
    window.onload = function () {

        // $("#expense_num").val("aaa");
        $.ajax({
            type:"get",
            url:"normalCreatePage",
            success:function(result){
                console.log(result);

                var res = JSON.parse(result);
                $("#office_name_creat").val(res.office_name);
                $("#department_name_creat").val(res.department_name);
                // location.reload();
            },
            error:function (err) {
                console.log(err)
            }
        })
    };
    $("#file").fileinput({
        uploadUrl: "UploadExpenseFile", // server upload action
        uploadAsync: true,
        maxFileCount: 5,
        showBrowse: false,
        browseOnZoneClick: true
    });
    //上传成功回调函数
    $('#file').on('filebatchuploadsuccess', function(event, data, previewId, index) {
        console.log(event);
        console.log(data);
        console.log(previewId);
        console.log(index);

    });

    //异步上传返回结果处理


</script>



</html>
