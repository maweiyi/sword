Vue.prototype.$http = axios;
var vm = new Vue({
    el: "#wrapper",
    data: {
        title: '',
        path: '',
        tag: '',
        content: ''
    },
    created: function () {
        if ($('#id').val() != -1) {
            this.$http.get('/editpage/content', {params: {id: $('#id').val()}}).then(function (response) {
                console.log(response.data);
                vm.title = response.data.entity.content.title;
                vm.path = response.data.entity.content.path;
                vm.tag = response.data.entity.tag;
                vm.content = response.data.entity.content.content;
                //editor.setMarkdown(response.data.entity.content.content);
            })
        }
    }
});

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
//editor.setMarkdown(vm.content);

    $("#savePage").bind('click', function () {
        axios.post("/editpage/publish", {
            content: editor.getMarkdown(),
            tags: vm.tag,
            title: vm.title,
            path: vm.path,
            status: "post"
        }).then(function (response) {
            if (response.data.success == true) {
                toastr.success("保存文章成功");
            } else {
                toastr.warning("保存文章失败");
            }
        }).catch(function (err) {

        })
    });
    $("#editPage").bind('click', function () {
        axios.post("/editpage/publish", {
            content: editor.getMarkdown(),
            tags: vm.tag,
            title: vm.title,
            path: vm.path,
            status: "edit"
        }).then(function (response) {
            if (response.data.success == true) {
                toastr.success("保存草稿成功");
            } else {
                toastr.warning("保存草稿失败");
            }

        }).catch(function (err) {

        })
    });
    $("#updateSavePage").bind('click', function () {
        axios.post("/editpage/update", {
            id: $("#id").val(),
            content: editor.getMarkdown(),
            tags: vm.tag,
            title: vm.title,
            path: vm.path
        }).then(function (response) {
            if (response.data.success == true) {
                toastr.success("更新文章成功")
            } else {
                toastr.warning("更新文章失败")
            }
        })
    });
    $("#updateEditPage").bind('click', function () {
        axios.post("/editpage/update", {
            id: $("#id").val(),
            content: editor.getMarkdown(),
            tags: vm.tag,
            title: vm.title,
            path: vm.path
        }).then(function (response) {
            if (response.data.success == true) {
                toastr.success("更新草稿成功")
            } else {
                toastr.warning("更新草稿失败")
            }
        })
    });



