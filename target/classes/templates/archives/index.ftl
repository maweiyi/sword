<!DOCTYPE html>
  <html class="light page-archives">
  <head>
      <meta charset="utf-8">
      <title>Archives | MWY的博客</title>
      <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
      <link rel="icon" href="../favicon.ico">
      <link href="../css/styles-v=c114cbe6.css" rel="stylesheet">
      <link rel="stylesheet" href="../css/personal-style.css">
      <link rel="stylesheet" href="../font-awesome/css/font-awesome.css">
  </head>
  <body>
  <span id="toolbox-mobile" class="toolbox-mobile">盒子</span>
  <div class="content content-archive" id="archives">
      <div class="page-header">
          <div class="breadcrumb">
              <div class="location">博客</div>
              <i class="icon-location"></i>
          </div>
          <div class="toolbox">
              <a class="toolbox-entry" href="/">
                  <span class="toolbox-entry-text">盒子</span>
                  <i class="icon-angle-down"></i>
                  <i class="icon-home"></i>
              </a>
              <ul class="list-toolbox">

                  <li class="item-toolbox">
                      <a
                              class="CIRCLE"
                              href="/archives/index"
                              rel="noopener noreferrer"
                              target="_self"
                      >
                          博客
                      </a>
                  </li>

                  <li class="item-toolbox">
                      <a
                              class="CIRCLE"
                              href="../category/index.html"
                              rel="noopener noreferrer"
                              target="_self"
                      >
                          分类
                      </a>
                  </li>
              </ul>
          </div>
          <div class="box-blog-info">
              <a class="avatar" href="/">
                  <img src="../img/avatar.jpg" alt="" />
              </a>
              <div class="info">
                  <h3 class="name" style="font-family: calligraffittiregular">
                      MWY
                  </h3>
                  <div class="slogan">
                      Find the bug of the world
                  </div>
              </div>
          </div>

      </div>
      <div class="post-list-box archive-body">
          <ul class="list-post">
              <li class="item-post item" v-for="item in article.rows">
                  <span class="post-date">{{item.created}}</span>
                  <a class="post-title" v-bind:href="'/content/index?id=' + item.id">{{item.title}}</a>
              </li>
          </ul>
      </div>

      <div class="archive-footer">
          <div id="paginator" class="pagination">
          </div>
      </div>
  </div>
  <script src="../plugins/moment.js"></script>
  <script src="../plugins/vue.min.js"></script>
  <script src="../plugins/axios.js"></script>
  <script src="../js/jquery-2.1.1.js"></script>
  <script src="../plugins/paginator/paginator.js"></script>
  <script src="../js/frontend/archives.js"></script>
  </body>
  </html>
