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
    <style>
        .container{
            display:table;
            height:100%;
        }

        .row{
            display: table-cell;
            vertical-align: middle;
        }
        /* centered columns styles */
        .row-centered {
            text-align:center;
        }
        .col-centered {
            display:inline-block;
            float:none;
            text-align:left;
            margin-right:-4px;
        }
    </style>
</head>
<body class="gray-bg container">
<div id="loginPage" class="row row-centered">
    <div class="middle-box text-center loginscreen animated fadeInDown">
        <div>
            <form class="m-t" role="form" action="/admin/login" method="post">
                <div class="form-group">
                    <input type="text" name="userName" class="form-control" placeholder="用户名" required="">
                </div>
                <div class="form-group">
                    <input type="password" name="password" class="form-control" placeholder="密码" required="">
                </div>
                <button type="submit" class="btn btn-primary block full-width m-b">登陆</button>
            </form>
        </div>
    </div>
</div>
<script type="text/javascript" color="0,0,255" opacity='0.7' zIndex="-2" count="99" src="../plugins/canvas-nest.js"></script>
<script src="../js/jquery-2.1.1.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="../js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<!-- Custom and plugin javascript -->
<script src="../js/inspinia.js"></script>
<script src="../plugins/vue.min.js"></script>
<script src="../plugins/axios.js"></script>
<!--script src="../plugins/table/bootstrap-table.js"></script-->
</body>
</html>
