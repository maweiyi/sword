$(function () {
    Vue.prototype.$http = axios;
    var vm = new Vue({
        el: '#archives',
        data: {
            article: ''
         },
        created: function () {
            this.$http.get("/manage/search", {params: {pageSize: 20, pageNumber: 1}}).then(function (response) {
                vm.article = response.data;
                console.log(vm.article);
                var records = vm.article.rows.length;
                for (var i = 0; i < vm.article.rows.length; i++) {
                    vm.article.rows[i].created = moment(vm.article.rows[i].created).format("YYYY-MM-DD")
                }
                console.log(vm.article.rows);
                var page = records % 20 == 0 ? records / 20 : records / 20 + 1;
                paginator.generPageHtml({

                    pno :1,
                    //总页码
                    total : page,
                    //总数据条数
                    totalRecords : records,
                    //链接前部
                    hrefFormer : '',
                    //链接尾部
                    hrefLatter : '',
                    //链接算法
                    getLink : function(n){
                        if(n == 1){
                            return this.hrefFormer + this.hrefLatter;
                        }
                        return this.hrefFormer  + '#' + this.hrefLatter;
                    }

                });
            })
        }
    });

});