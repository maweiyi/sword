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
    <link href="../plugins/table/bootstrap-table.css" rel="stylesheet">

</head>

<body>
    <div id="wrappers">
        <nav class="navbar-default navbar-static-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav metismenu" id="side-menu">
                    <li class="nav-header">
                        <div class="dropdown profile-element"> <span>
                            <img alt="image" class="img-circle" style="height: 50px; width: 50px" src="../img/profile.jpg" />
                             </span>
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="clear"> <span class="block m-t-xs"> <strong class="font-bold">MWY</strong>
                            </span></span> </a>
                            <ul class="dropdown-menu animated fadeInRight m-t-xs">
                                <li><a href="/admin/logout">Logout</a></li>
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
                        <a href="/manage/index"><i class="fa fa-diamond"></i> <span class="nav-label">文章管理</span></a>
                    </li>
                    <!--li>
                        <a href="mailbox.html"><i class="fa fa-file-text"></i> <span class="nav-label">标签管理</span></a>
                    </li-->
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
                            <a href="/admin/logout">
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
                                    <h2 class="font-bold">{{staticArticle}}</h2>
                                    <span>篇文章</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4">
                        <div class="ibox float-e-margins">
                            <div class="ibox-title">
                                <h5>最新文章</h5>
                            </div>
                            <div class="ibox-content">

                                <table class="table">
                                    <thead>
                                    <tr>
                                        <th>文章</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr v-for="item in recentContent">
                                        <td>{{item.title}}</td>
                                    </tr>
                                    </tbody>
                                </table>

                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="ibox float-e-margins">
                            <div class="ibox-title">
                                <h5>系统日志</h5>
                            </div>
                            <div class="ibox-content">

                                <table class="table">
                                    <thead>
                                    <tr>
                                        <th>日志</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr v-for="item in recentLog">
                                        <td>{{item.action}}</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>

    </div>
    <script src="../js/jquery-2.1.1.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="../js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    <!-- Custom and plugin javascript -->
    <script src="../js/inspinia.js"></script>
    <script src="../plugins/vue.min.js"></script>
    <script src="../plugins/axios.js"></script>
    <!--script src="../plugins/table/bootstrap-table.js"></script-->
    <script src="../plugins/bootstrap-table/bootstrap-table.min.js"></script>
    <script src="../js/admin/index.js"></script>

</body>
</html>
