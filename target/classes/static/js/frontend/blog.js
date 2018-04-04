$(function () {
    var vm = new Vue({
        el: '#blog',
        data: {
            blog: '',
            title: '',
            date: ''
        },
        created: function () {
            //获取文章的详情
            axios.get("/content/detail", {params: {id: $("#id").val()}}).then(function (response) {
                var convert = new showdown.Converter();
                vm.blog = convert.makeHtml(response.data.content);
                vm.title = response.data.title;
                vm.date = response.data.created;
            })
        }
    })
});