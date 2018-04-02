$(function () {
    Vue.prototype.$http = axios;
    var vm = new Vue({
        el: '#archives',
        data: {
            article: ''
         },
        created: function () {
            this.$http.get("/manage/search", {params: {pageSize: 10, pageNumber: 1}}).then(function (response) {
                vm.article = response.data;
                console.log(vm.article);
                var records = vm.article.total;
                for (var i = 0; i < vm.article.rows.length; i++) {
                    vm.article.rows[i].created = moment(vm.article.rows[i].created).format("YYYY-MM-DD")
                }
                console.log(vm.article.rows);
                var page = records % 10 == 0 ? records / 10 : records / 10 + 1;
                paginator.generPageHtml({

                    pno :1,
                    //总页码
                    total : page,
                    //总数据条数
                    totalRecords : records,
                    mode: 'click',
                    //链接前部
                    //链接算法
                    hrefFormer: '',
                    hrefLatter: '',
                    click: function (n) {
                        axios.get("/manage/search", {params: {pageSize: 10, pageNumber: n}}).then(function(response) {
                            vm.article = response.data;
                            paginator.selectPage(n)
                        });

                    },
                    getHref : function(n){
                        return '#';
                    }


                });
            })
        }
    });

});