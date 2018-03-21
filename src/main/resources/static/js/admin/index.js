$(function () {
    var vm = new Vue({
        el: "#wrapper",
        data: {
            
        }
    });

    axios.get("/admin/staticarticle").then(function (response) {
        console.log(response);
    }).catch(function (err) {
        console.log(err);
        }
    )

})
