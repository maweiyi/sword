$(function () {
    Vue.prototype.$http = axios;
    var vm = new Vue({
        el: "#wrapper",
        data: {
            staticArticle: 1
        },
        created: function () {

            this.$http.get("/admin/staticarticle").then(function (response) {
                vm.staticArticle = response.data;
            }).catch(function (err) {

            })
        }
    });

})
