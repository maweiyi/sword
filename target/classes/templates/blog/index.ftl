<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="icon" href="../favicon.ico">
    <link href="../css/styles-v=c114cbe6.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/personal-style.css">
    <link rel="stylesheet" href="../font-awesome/css/font-awesome.css">
</head>
<body>
<div id="blog">
    <input id="id" value="${id}" hidden>
    <div class="post-header CENTER">

        <div class="toolbox">
            <a class="toolbox-entry" href="../../../../index.html">
                <span class="toolbox-entry-text">盒子</span>
                <i class="icon-angle-down"></i>
                <i class="icon-home"></i>
            </a>
            <ul class="list-toolbox">

                <li class="item-toolbox">
                    <a
                            class="CIRCLE"
                            href="../../../../archives/index.html"
                            rel="noopener noreferrer"
                            target="_self"
                    >
                        博客
                    </a>
                </li>

                <li class="item-toolbox">
                    <a
                            class="CIRCLE"
                            href="../../../../category/index.html"
                            rel="noopener noreferrer"
                            target="_self"
                    >
                        分类
                    </a>
                </li>
            </ul>
        </div>
    </div>

    <div class="content content-post CENTER">
        <article id="post-node-pngdefry" class="article article-type-post" itemprop="blogPost">
            <header class="article-header">
                <h1 class="post-title">{{title}}</h1>

                <div class="article-meta">
      <span>
        <i class="icon-calendar"></i>
        <span>{{date}}</span>
      </span>
                </div>
            </header>
        <div class="article-content" v-html="blog"></div>
        </article>
    </div>
</div>

<script src="../plugins/moment.js"></script>
<script src="../plugins/vue.min.js"></script>
<script src="../plugins/axios.js"></script>
<script src="../js/jquery-2.1.1.js"></script>
<script src="../plugins/md2html/showdown.js"></script>
<script src="../js/frontend/blog.js"></script>
</body>
</html>