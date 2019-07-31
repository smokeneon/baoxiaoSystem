<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: leondon
  Date: 19-4-17
  Time: 下午10:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>创建报销单</title>


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
    <script src="./nifty/js/pace.min.js"></script>


    <!--jQuery [ REQUIRED ]-->
    <script src="./nifty/js/jquery.min.js"></script>


    <!--BootstrapJS [ RECOMMENDED ]-->
    <script src="./nifty/js/bootstrap.min.js"></script>


    <!--Nifty Admin [ RECOMMENDED ]-->
    <script src="./nifty/js/nifty.min.js"></script>
    <script src="./nifty/plugins/bootstrap-table/bootstrap-table.min.js"></script>

    <script src="./nifty/jspdf.debug.js"></script>
    <script src="./nifty/html2canvas.js"></script>




</head>

<!--TIPS-->
<!--You may remove all ID or Class names which contain "demo-", they are only used for demonstration. -->

<body>
<%String role=(String) session.getAttribute("role");%>
<%
    if(role==null){
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
                                    <!-- You may use image instead of an icon.
                                    <!--<img class="img-circle img-user media-object" src="img/av1.png" alt="Profile Picture">-->
<%--                                    <i class="pli-male"></i>--%>
                                </span>
<%--                            <div class="username hidden-xs">John Doe</div>--%>
                        </a>


                        <div class="dropdown-menu dropdown-menu-md dropdown-menu-right panel-default">



<%--                            <!-- User dropdown menu -->--%>
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

<%--                            <!-- Dropdown footer -->--%>
<%--                            <div class="pad-all text-right">--%>
<%--                                <a href="pages-login.html" class="btn btn-primary">--%>
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
                <h1 class="page-header text-overflow">发放报销金额</h1>

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
                <li><a href="#">财务人员</a></li>
                <li class="active">发放报销金额</li>
            </ol>
            <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
            <!--End breadcrumb-->



            <!--Page content-->
            <!--===================================================-->
            <div id="page-content">
                <div class="col-lg-2"></div>
                <div class="col-lg-8" id="demo">
                    <div class="panel">
                        <div class="panel-heading">
                            <h3 class="panel-title">报销单详情</h3>
                        </div>
                        <div class="panel-body">
                            <div class="col-lg-6">
                                <fieldset>
                                    <p class="bord-btm pad-ver text-main text-bold">报销单</p>
                                    <br>
                                    <div class="form-group">
                                        <label class="col-lg-3 control-label">报销单号: </label>
                                        <label class="col-lg-8 control-label"><a>${ExpenseDetails.expense_num}&nbsp;&nbsp</a></label>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-lg-3 control-label">报销单创建时间: </label>
                                        <label class="col-lg-8 control-label"><a>${ExpenseDetails.create_current_date}&nbsp;&nbsp</a></label>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-lg-3 control-label">报销单消费日期: </label>
                                        <label class="col-lg-8 control-label"><a>${ExpenseDetails.create_consumption_date}&nbsp;&nbsp</a></label>
                                    </div>


                                    <div class="form-group">
                                        <label class="col-lg-3 control-label">费用类别:</label>
                                        <label class="col-lg-8 control-label"><a>${ExpenseDetails.create_cost_category}&nbsp;&nbsp</a></label>
                                    </div>


                                    <div class="form-group">
                                        <label class="col-lg-3 control-label">消费金额:</label>
                                        <label class="col-lg-8 control-label"><a>${ExpenseDetails.create_fee}&nbsp;&nbsp</a></label>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-lg-3 control-label">提交原因:</label>
                                        <label class="col-lg-8 control-label"><a>${ExpenseDetails.create_reimbursement_reasons }&nbsp;&nbsp</a></label>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-lg-3 control-label">提交用户: </label>
                                        <label class="col-lg-8 control-label"><a id="submitUsername" zhi="${ExpenseDetails.username}">${ExpenseDetails.username}&nbsp;&nbsp</a></label>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-lg-3 control-label">发票类型:</label>
                                        <label class="col-lg-8 control-label"><a>${ExpenseDetails.create_invoice_type}&nbsp;&nbsp</a></label>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-lg-3 control-label">已上传附件:</label>
                                        <label class="col-lg-8 control-label"><a>${ExpenseDetails.create_file }&nbsp;&nbsp</a></label>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-lg-3 control-label">审批意见: </label>
                                        <label class="col-lg-8 control-label"><a>暂无&nbsp;&nbsp</a></label>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-lg-3 control-label">财务意见:</label>
                                        <label class="col-lg-8 control-label"><a>暂无&nbsp;&nbsp</a></label>
                                    </div>

                                </fieldset>
                            </div>
                            <div class="col-lg-6">
                                <p class="bord-btm pad-ver text-main text-bold">用户详情</p>
                                <br>
                                <div class="form-group">
                                    <label class="col-lg-3 control-label">用户名: </label>
                                    <label class="col-lg-8 control-label"><a id="fUsername">&nbsp;&nbsp</a></label>
                                </div>

                                <div class="form-group">
                                    <label class="col-lg-3 control-label">用户编号: </label>
                                    <label class="col-lg-8 control-label"><a id="fUserNum">&nbsp;&nbsp</a></label>
                                </div>

                                <div class="form-group">
                                    <label class="col-lg-3 control-label">姓名: </label>
                                    <label class="col-lg-8 control-label"><a id="fUserName">&nbsp;&nbsp</a></label>
                                </div>

                                <div class="form-group">
                                    <label class="col-lg-3 control-label">手机号: </label>
                                    <label class="col-lg-8 control-label"><a id="fUserTel">&nbsp;&nbsp</a></label>
                                </div>


                                <div class="form-group">
                                    <label class="col-lg-3 control-label">工作城市:</label>
                                    <label class="col-lg-8 control-label"><a id="fUserCity">&nbsp;&nbsp</a></label>
                                </div>


                                <div class="form-group">
                                    <label class="col-lg-3 control-label">办公室:</label>
                                    <label class="col-lg-8 control-label"><a id="fUserOffice">&nbsp;&nbsp</a></label>
                                </div>

                                <div class="form-group">
                                    <label class="col-lg-3 control-label">部门:</label>
                                    <label class="col-lg-8 control-label"><a id="fUserDepartment">&nbsp;&nbsp</a></label>
                                </div>

                                <div class="form-group">
                                    <label class="col-lg-3 control-label">上级主管: </label>
                                    <label class="col-lg-8 control-label"><a id="fUserDirector">&nbsp;&nbsp</a></label>
                                </div>

                            </div>

                        </div>

                        <div class="panel-footer">
                            <div class="row col-lg-10" style="text-align:right">
                                <!-- <div class="col-sm-7 col-sm-offset-3"> -->

                                <%if(role.contains("普通用户")){%>
                                <c:if test="${ExpenseDetails.request_status == 0 && ExpenseDetails.shen_pi_status == 0 && ExpenseDetails.pay_status ==0}"><button class="btn btn-info btn-sm" status="${i.request_status}" id="submitShenPiButton" onclick="submit_shenpi('${ExpenseDetails.expense_num}')" >提交审批</button></c:if>
                                <c:if test="${ExpenseDetails.request_status == 1 && ExpenseDetails.shen_pi_status == 0 && ExpenseDetails.pay_status ==0}"><button class="btn btn-success"  type="button" disabled>已提交审批</button></c:if>
                                <%} %>

                                <button class="btn btn-primary" type="button" onclick="downloadPdf()">保存</button>
                                <button class="btn btn-default" type="button" onclick="history.back();">返回</button>
                                <!-- </div> -->
                            </div>
                        </div>
                        <br><br><br>
                    </div>
                </div>
            </div>

        </div>
        <!--===================================================-->
        <!--End page content-->



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

                                    <a href="#" class="list-group-item">
                                        <i class="pli-gear icon-lg icon-fw"></i> 设置
                                    </a>
                                    <a href="#" class="list-group-item">
                                        <i class="pli-information icon-lg icon-fw"></i> 帮助
                                    </a>
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
<%--                                        <li><a href="./total_reimbursement_data.jsp">报销总数据</a></li>--%>
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
    window.onload = function () {
        var username = $("#submitUsername").attr("zhi");
        $.ajax({
            type: "post",
            url: "UserEdit",
            data: {
                username:username
            },
            dataType:'json',
            success:function(user){
                $("#fUsername").text(user.username);
                $("#fUserNum").text(user.user_num);
                $("#fUserName").text(user.user_name);
                $("#fUserTel").text(user.user_telephone);
                $("#fUserCity").text(user.work_city);
                $("#fUserOffice").text(user.office_num);
                $("#fUserDepartment").text(user.department_num);
                $("#fUserDirector").text(user.director_name);


            }
        });
    }

    function confirm_payment(expense_num,changePayStatus) {
        alert("expense_payment");
        $.ajax({
            type: "post",
            url: "ConfirmPayment",
            data: {
                expense_num:expense_num,
                changePayStatus:changePayStatus
            },
            success:function(result){
                if (result=="success") {
                    alert("确认付款成功");

                }
                if (result=="failure") {
                    alert("确认付款失败")
                }
                location.reload();


            }
        });
    }

    function submit_shenpi(expense_num) {
        $.ajax({
            type:"post",
            url:"submitShenPi",
            data:{
                "expense_num" : expense_num,
            },
            success:function(result){
                if (result=="success") {
                    alert("提交审批成功");

                }
                if (result=="failure") {
                    alert("提交审批失败")
                }
                location.reload();
            }
        })


    }

    function change_shenpi_status(expense_num,agreeStatus) {
        $.ajax({
            type:"post",
            url:"changeShenpiStatus",
            data:{
                "expense_num" : expense_num,
                "agreeStatus" : agreeStatus
            },
            success:function(result){
                if (result=="success") {
                    alert("已同意");

                }
                if (result=="failure") {
                    alert("失败")
                }
                location.reload();
            }
        })


    }

    function downloadPdf() {

        var element = $("#demo");    // 这个dom元素是要导出pdf的div容器
        var w = element.width();    // 获得该容器的宽
        var h = element.height();    // 获得该容器的高
        var offsetTop = element.offset().top;    // 获得该容器到文档顶部的距离
        var offsetLeft = element.offset().left;    // 获得该容器到文档最左的距离
        var canvas = document.createElement("canvas");
        var abs = 0;
        var win_i = $(window).width();    // 获得当前可视窗口的宽度（不包含滚动条）
        var win_o = window.innerWidth;    // 获得当前窗口的宽度（包含滚动条）
        if(win_o>win_i){
            abs = (win_o - win_i)/2;    // 获得滚动条长度的一半
        }
        canvas.width = w * 2;    // 将画布宽&&高放大两倍
        canvas.height = h * 2;
        var context = canvas.getContext("2d");
        context.scale(2, 2);
        context.translate(-offsetLeft-abs,-offsetTop);
        // 这里默认横向没有滚动条的情况，因为offset.left(),有无滚动条的时候存在差值，因此
        // translate的时候，要把这个差值去掉
        html2canvas(element).then(function(canvas) {
            var contentWidth = canvas.width;
            var contentHeight = canvas.height;
            //一页pdf显示html页面生成的canvas高度;
            var pageHeight = contentWidth / 592.28 * 841.89;
            //未生成pdf的html页面高度
            var leftHeight = contentHeight;
            //页面偏移
            var position = 0;
            //a4纸的尺寸[595.28,841.89]，html页面生成的canvas在pdf中图片的宽高
            var imgWidth = 595.28;
            var imgHeight = 592.28/contentWidth * contentHeight;

            var pageData = canvas.toDataURL('image/jpeg', 1.0);

            var pdf = new jsPDF('', 'pt', 'a4');

            //有两个高度需要区分，一个是html页面的实际高度，和生成pdf的页面高度(841.89)
            //当内容未超过pdf一页显示的范围，无需分页
            if (leftHeight < pageHeight) {
                pdf.addImage(pageData, 'JPEG', 0, 0, imgWidth, imgHeight);
            } else {    // 分页
                while(leftHeight > 0) {
                    pdf.addImage(pageData, 'JPEG', 0, position, imgWidth, imgHeight)
                    leftHeight -= pageHeight;
                    position -= 841.89;
                    //避免添加空白页
                    if(leftHeight > 0) {
                        pdf.addPage();
                    }
                }
            }
            pdf.save('expense.pdf');
        })

    }
</script>

</html>
