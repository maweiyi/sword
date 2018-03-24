$(function () {

    var editor = editormd("editormd", {
        width   : "100%",
        height  : 600,
        syncScrolling : "single",
        path : "../plugins/editor/lib/",
        toolbarIcons: "full",
        saveHTMLToTextarea : true,
        emoji : false,
        fullscreen: false,
        taskList : true,
        tocm            : true,         // Using [TOCM]
        tex : true,                   // 开启科学公式TeX语言支持，默认关闭
        flowChart : true,             // 开启流程图支持，默认关闭
        sequenceDiagram : true,
        imageUpload : true,
        imageFormats : ["jpg", "jpeg", "gif", "png", "bmp", "webp"],
        imageUploadURL : "./php/upload.php",
        toolbarIcons: function () {
            return ["undo", "redo", "|", "bold", "del", "italic", "quote", "ucwords", "uppercase",
                "lowercase", "|", "h1", "h2", "h3", "h4", "h5", "|", "list-ul", "list-ol", "hr",
                "|", "link", "reference-link", "image", "code", "preformatted-text"
            ]
        }
    });
    Vue.prototype.$http = axios;
    var vm = new Vue({
        el: "#wrapper",
        data: {
            staticArticle: 0,
            recentContent: '',
            recentLog: ''
        },
        created: function () {

            this.$http.get("/admin/staticarticle").then(function (response) {
                vm.staticArticle = response.data;
            }).catch(function (err) {

            });
            this.$http.get("/admin/recentcontent").then(function (response) {
                vm.recentContent = response.data;
            }).catch(function (err) {

            });
            this.$http.get("/admin/log/recentlog").then(function (response) {
                vm.recentLog = response.data;
            }).catch(function (err) {
                
            })
        }
    });

    $("#savePage").bind('click', function () {
        console.log(editor.getMarkdown());
        axios.post()
    })

})
