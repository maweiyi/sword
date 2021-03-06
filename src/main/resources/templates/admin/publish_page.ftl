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
    <link href="../plugins/editor/css/editormd.css" rel="stylesheet">
    <link href="../css/plugins/toastr/toastr.min.css" rel="stylesheet">

</head>

<body>
<div id="wrapper">
    <input type="text" id="id" value="${id}" hidden>
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
                <li>
                    <a href="/admin/home"><i class="fa fa-dashboard"></i> <span class="nav-label">仪表盘</span></a>
                </li>
                <li class="active">
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
                <h2><strong>发布文章</strong></h2>
            </div>
        </div>
        <div class="wrapper wrapper-content animated fadeInRight">
            <div class="row">
                <div class="col-sm-5">
                    <form role="form">
                        <div class="form-group"><label>标题</label> <input type="text" placeholder="请输入文章标题" class="form-control" v-model="title"></div>
                        <!--div class="form-group"><label>标签</label> <input type="text" placeholder="请填写文章标签" class="form-control" v-model="tag"></div-->
                    </form>
                </div>
                <div class="col-sm-5">
                    <form role="form">
                        <div class="form-group"><label>访问路径</label> <input type="text" placeholder="请填写访问路径" class="form-control" v-model="path"></div>
                    </form>
                </div>
            </div>
            <div id="editormd">
                <textarea style="display:none;" v-model="content"></textarea>
            </div>
                <div class="col-sm-4 col-sm-offset-9">
                    <#if id == -1>
                        <button id="savePage" type="button" class="btn btn-w-m btn-success">保存文章</button>
                        <button id="editPage" type="button" class="btn btn-w-m btn-warning">保存草稿</button>
                        <#else>
                        <button id="updateSavePage" type="button" class="btn btn-w-m btn-success">更新文章</button>
                        <button id="updateEditPage" type="button" class="btn btn-w-m btn-warning">更新草稿</button>
                    </#if>

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
<script src="../plugins/vue.min.js"></script>
<script src="../plugins/axios.js"></script>
<script src="../plugins/editor/src/editormd.js"></script>
<script src="../js/plugins/toastr/toastr.min.js"></script>
<script src="../js/editor.js"></script>

</body>
</html>
