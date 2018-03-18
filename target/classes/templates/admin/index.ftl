<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>SWORD</title>
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="../css/animate.css" rel="stylesheet">
    <link href="../css/mini.css" rel="stylesheet">
    <link href="../css/style.css" rel="stylesheet">

</head>

<body>
    <div id="wrapper">
        <nav class="navbar-default navbar-static-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav metismenu" id="side-menu">
                    <li class="nav-header">
                        <div class="dropdown profile-element"> <span>
                            <img alt="image" class="img-circle" style="height: 50px; width: 50px" src="../img/profile.jpg" />
                             </span>
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="clear"> <span class="block m-t-xs"> <strong class="font-bold">MWY</strong>
                            <ul class="dropdown-menu animated fadeInRight m-t-xs">
                                <li><a href="login.html">Logout</a></li>
                            </ul>
                        </div>
                        <div class="logo-element">
                            Blog
                        </div>
                    </li>
                    <li class="active">
                        <a href="/admin/home"><i class="fa fa-dashboard"></i> <span class="nav-label">仪表盘</span></a>
                    </li>
                    <li>
                        <a href="/editpage/index"><i class="fa fa-pencil-square-o"></i> <span class="nav-label">发布文章</span></a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-diamond"></i> <span class="nav-label">文章管理</span></a>
                    </li>
                    <li>
                        <a href="mailbox.html"><i class="fa fa-file-text"></i> <span class="nav-label">页面管理</span></a>
                    </li>
                    <li>
                        <a href="metrics.html"><i class="fa fa-cloud-upload"></i> <span class="nav-label">文件管理</span>  </a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-cubes"></i> <span class="nav-label">其它管理</span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level collapse">
                            <li><a href="form_basic.html">评论管理</a></li>
                            <li><a href="form_advanced.html">分类/标签</a></li>
                            <li><a href="form_wizard.html">编辑模版</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-flask"></i> <span class="nav-label">主题设置</span></a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-gear"></i> <span class="nav-label">系统设置</span></a>
                    </li>
                </ul>

            </div>
        </nav>

        <div id="page-wrapper" class="gray-bg">
            <div class="row border-bottom">
                <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
                    <div class="navbar-header">
                        <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i> </a>
                    </div>
                    <ul class="nav navbar-top-links navbar-right">
                        <li>
                            <a href="login">
                                <i class="fa fa-sign-out"></i> 退出
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>
            <div class="row">
            <div class="col-sm-12">
                <h2><strong>SWORD仪表盘</strong></h2>
            </div>
            </div>
            <div class="wrapper wrapper-content animated fadeInRight">
                <div class="row">
                    <div class="col-sm-6 col-lg-3">
                        <div class="widget style1 navy-bg">
                            <div class="row">
                                <div class="col-xs-4">
                                    <span class="mini-stat-icon"><i class="fa fa-quote-right" aria-hidden="true"></i></span>
                                </div>
                                <div class="col-xs-8 text-right">
                                    <span> 发表了 </span>
                                    <h2 class="font-bold">2</h2>
                                    <span>篇文章</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-3">
                        <div class="widget style1 yellow-bg">
                            <div class="row">
                                <div class="col-xs-4">
                                    <span class="mini-stat-icon"><i class="fa fa-comments-o" aria-hidden="true"></i></span>
                                </div>
                                <div class="col-xs-8 text-right">
                                    <span> 收到了 </span>
                                    <h2 class="font-bold">12</h2>
                                    <span>条留言</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-3">
                        <div class="widget style1 lazur-bg">
                            <div class="row">
                                <div class="col-xs-4">
                                    <span class="mini-stat-icon"><i class="fa fa-cloud-upload" aria-hidden="true"></i></span>
                                </div>
                                <div class="col-xs-8 text-right">
                                    <span> 上传了 </span>
                                    <h2 class="font-bold">26</h2>
                                    <span>个附件</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <!-- Mainly scripts -->
    <script src="../js/jquery-2.1.1.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="../js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    <!-- Custom and plugin javascript -->
    <script src="../js/inspinia.js"></script>



</body>
</html>
