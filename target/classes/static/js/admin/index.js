
    Vue.prototype.$http = axios;
    var vm = new Vue({
        el: "#wrappers",
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
            this.$http.get("/admin/recentlog").then(function (response) {
                vm.recentLog = response.data;
            }).catch(function (err) {
                
            })
        }
    })
