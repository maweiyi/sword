<!DOCTYPE html>


  <html class="light page-home">


  <head>
      <meta charset="utf-8">
      <title>MWY的博客</title>
      <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
      <meta property="og:title" content="MWY的博客">
      <meta property="og:url" content="http://www.forsigner.com/index.html">
      <meta property="og:site_name" content="forsigner的博客">
      <meta property="og:description" content="forsigner, 前端开发, 用户体验, 设计, frontend, design, nodejs">
      <meta property="og:locale" content="zh-CN">




      <link rel="icon" href="favicon.ico">


      <link href="css/styles-v=c114cbe6.css" rel="stylesheet">



      <link rel="stylesheet" href="css/personal-style.css">





      <script type="text/javascript">
          var _hmt = _hmt || [];
          (function() {
              var hm = document.createElement("script");
              hm.src = "//hm.baidu.com/hm.js?57e94d016e201fba3603a8a2b0263af0";
              var s = document.getElementsByTagName("script")[0];
              s.parentNode.insertBefore(hm, s);
          })();
      </script>



      <script type="text/javascript">
          (function(){
              var bp = document.createElement('script');
              var curProtocol = window.location.protocol.split(':')[0];
              if (curProtocol === 'https') {
                  bp.src = 'https://zz.bdstatic.com/linksubmit/push.js';
              }
              else {
                  bp.src = 'http://push.zhanzhang.baidu.com/push.js';
              }
              var s = document.getElementsByTagName("script")[0];
              s.parentNode.insertBefore(bp, s);
          })();
      </script>




      <script async src="https://dn-lbstatics.qbox.me/busuanzi/2.3/busuanzi.pure.mini.js"></script>



      <link rel="stylesheet" href="http://cdn.bootcss.com/font-awesome/4.3.0/css/font-awesome.min.css"><!-- hexo-inject:begin --><!-- hexo-inject:end -->

  </head>

  <body>





  <div class="content-home text-center">
      <a class="avatar" href="index.html">
          <img src="img/avatar.jpg" alt="" />
      </a>
      <h1 class="name" style="font-family: calligraffittiregular">
          MWY
      </h1>
      <div class="slogan">
          Find the bug of the world
      </div>

      <hr>

      <ul class="text-center nav">

          <li class="item">

              <a href="archives/index">Blog</a>

              <span>|</span>
          </li>
          <li class="item">

              <a href="https://github.com/forsigner" rel="noopener noreferrer" target="_blank">Github</a>

              <span>|</span>
          </li>

          <li class="item">

              <a href="https://stackoverflow.com/users/4906451/mwy" rel="noopener noreferrer" target="_blank">Stack Overflow</a>

              <span>|</span>
          </li>

      </ul>

  </div>
  <script type="text/javascript">
      function loadScript(url, callback) {
          var script = document.createElement('script')
          script.type = 'text/javascript';

          if (script.readyState) { //IE
              script.onreadystatechange = function() {
                  if (script.readyState == 'loaded' ||
                          script.readyState == 'complete') {
                      script.onreadystatechange = null;
                      callback();
                  }
              };
          } else { //Others
              script.onload = function() {
                  callback();
              };
          }

          script.src = url;
          document.getElementsByTagName('head')[0].appendChild(script);
      }

      window.onload = function() {
          loadScript('/js/bundle.js?235683', function() {
              // load success
          });
      }
  </script>

  <script type="text/x-mathjax-config">
    MathJax.Hub.Config({
        tex2jax: {
            inlineMath: [ ["$","$"], ["\\(","\\)"] ],
            skipTags: ['script', 'noscript', 'style', 'textarea', 'pre', 'code'],
            processEscapes: true
        }
    });
    MathJax.Hub.Queue(function() {
        var all = MathJax.Hub.getAllJax();
        for (var i = 0; i < all.length; ++i)
            all[i].SourceElement().parentNode.className += ' has-jax';
    });
</script>
  <script src="http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML"></script><!-- hexo-inject:begin --><!-- hexo-inject:end -->
  </body>
  </html>
