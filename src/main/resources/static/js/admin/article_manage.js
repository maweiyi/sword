$(function () {
    //$("#articleTable").bootstrapTable('destroy');
    $('#articleTable').bootstrapTable({
        method: 'get',
        toolbar: '#toolbar', //工具按钮用哪个容器
        striped: true, //是否显示行间隔色
        cache: false, //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
        sortable: false, //是否启用排序
        sortOrder: "asc", //排序方式
        pagination: true,
        pageNumber: 1, //初始化加载第一页，默认第一页
        pageSize: 10, //每页的记录行数（*）
        pageList: [10, 25, 50, 100], //可供选择的每页的行数（*）
        url: '/manage/search',
        queryParamsType: '',
        sidePagination: "server", //分页方式：client客户端分页，server服务端分页（*）
        //search: true, //是否显示表格搜索，此搜索是客户端搜索，不会进服务端，所以，个人感觉意义不大
        strictSearch: true,
        //showColumns: true, //是否显示所有的列
        //showRefresh: true, //是否显示刷新按钮
        minimumCountColumns: 2, //最少允许的列数
        clickToSelect: true, //是否启用点击选中行
        searchOnEnterKey: true,
        columns: [{
            field: 'title',
            title: '文章标题',
            width: '30%',
            align: 'center'
        }, {
            field: 'created',
            title: '创建时间',
            width: '20%',
            align: 'center'
        }, {
            field: 'status',
            title: '状态',
            width: '20%',
            align: 'center',
            formatter: function (value, row, index) {
                if (value == "post") {
                    return '<span class="label label-info">发布</span>'
                } else {
                    return '<span class="label label-warning">草稿</span>'
                }
            }
        }, {
            field: 'id',
            title: '操作',
            width: '40%',
            align: 'center',
            formatter: function (value, row, index) {
                return [
                    "<a href=" + "/editpage/index?id=" + value + ' class="btn btn-primary btn-xs" style="margin-right: 3px">编辑</a>',
                    "<a href=" + "javascript:void(0)" + " onclick=" + "deleteContent(" + value + ")" + ' class="btn btn-warning btn-xs" style="margin-right: 3px">删除</a>',
                    '<button class="btn btn-info btn-xs">预览</button>'

                ].join('');
            }
        }]

    });


});

