var paginator = {
    pagerid 			: 'paginator', //divID
    mode				: 'link', //模式(link 或者 click)
    pno					: 1, //当前页码
    total				: 1, //总页码
    totalRecords		: 0, //总数据条数
    isShowPrePageBtn	: true, //是否显示上一页按钮
    isShowNextPageBtn	: true, //是否显示下一页按钮
    hrefFormer			: '', //链接前部
    hrefLatter			: '',//链接尾部
    getLink	: function(n){
        if(n == 1){
            return this.hrefFormer + this.hrefLatter;
        }
        return this.hrefFormer + n + this.hrefLatter;
    },

    selectPage : function(n){
        this._config['pno'] = n;
        this.generPageHtml(this._config,true);
    },

    //生成控件代码
    generPageHtml : function(config,enforceInit){
        if(enforceInit || !this.inited){
            this.init(config);
        }

        var str_prv= '',str_next= '';

        //显示上一页按钮
        if(this.isShowPrePageBtn){
            if(this.hasPrv){
                str_prv = '<nav class="page-nav">' + '<a class="extend next" rel="next"'+this._getHandlerStr(this.prv)+'>'+ '<i class="icon-angle-left"></i>' +'</a>';
            }else{
                //str_prv = '<nav class="page-nav">' + '<a class="extend next disabled">'+ '<i class="icon-angle-left"></i>' +'</a>';
                str_prv = '<nav class="page-nav">';
            }
        }

        //显示下一页按钮
        if(this.isShowNextPageBtn){
            if(this.hasNext){
                str_next = '<a class="extend next" rel="next" '+this._getHandlerStr(this.next) + '>'+ '<i class="icon-angle-right"></i> ' +'</a>' + '</nav>';
            }else{
               // str_next = '<a class="extend next disabled">'+ ' <i class="icon-angle-right"></i> ' +'</a>' + '</nav>';
                str_next = '</nav>'
            }
        }

        var str = '';
        var dot = '<span class="break">...</span>';

        //分页处理
        if(this.total <= 10){
            for(var i=1;i<=this.total;i++){
                if(this.pno == i){
                    str += '<span class="page-number current">' + i + '</span>';
                }else{
                    //str += '<a class="page-number"'+this._getHandlerStr(i)+'>'+i+'</a>';
                    str += '<a class="page-number"' + this._getHandlerStr(i)+'>'+i+'</a>'
                }
            }
        }else{
            //总的页数大于10页
            if(this.pno <= 6){
                for(var i=1;i<=8;i++){
                    if(this.pno == i){
                        str += '<span class="page-number current">' + i + '</span>';
                    }else{
                        //str += '<a class="page-number"'+ this._getHandlerStr(i) + '>'+i+'</a>';
                        str += '<a class="page-number"' + this._getHandlerStr(i)+'>'+i+'</a>'
                    }
                }
                str += dot;
                //str += '<a class="page-number" ' + this._getHandlerStr(this.total) + '>' + this.total + '</a>'
                str += '<a class="page-number"' + this._getHandlerStr(this.total)+'>'+this.total+'</a>'
            }else{
                //当前页大于6
                str += '<a class="page-number" '+this._getHandlerStr(1) + '>1</a>';
                //str += '<a class="page" '+this._getHandlerStr(2)+ '>2</a>';
                str += dot;

                var begin = this.pno - 4;//pno=7,开始3
                var end = this.pno + 4; //pno=7, 结束11
                if(end > this.total){
                    end = this.total;
                    begin = end - 8; //
                }else if(end + 1 == this.total){
                    end = this.total;
                }
                for(var i=begin;i<=end;i++){
                    if(this.pno == i){
                        str += '<span class="page-number current">' + i + '</span>';
                    }else{
                        str += '<a class="page-number" '+this._getHandlerStr(i)+ '>'+i+'</a>';
                    }
                }
                if(end != this.total){
                    str += dot;
                    str += '<a class="page-number" ' + this._getHandlerStr(this.total) + '>' + this.total + '</a>'
                }
            }
        }
        var pagerHtml = '';
        pagerHtml += str_prv + str + str_next;
        pagerHtml += '';
        $("#"+this.pagerid).html(pagerHtml);
    },
    //分页按钮控件初始化
    init : function(config){
        this.pno = isNaN(config.pno) ? 1 : parseInt(config.pno);
        this.total = isNaN(config.total) ? 1 : parseInt(config.total);
        this.totalRecords = isNaN(config.totalRecords) ? 0 : parseInt(config.totalRecords);
        if(config.pagerid){this.pagerid = config.pagerid;}
        if(config.mode){this.mode = config.mode;}
        if(config.isShowPrePageBtn != undefined){this.isShowPrePageBtn=config.isShowPrePageBtn;}
        if(config.isShowNextPageBtn != undefined){this.isShowNextPageBtn=config.isShowNextPageBtn;}
        if(config.lang){
            for(var key in config.lang){
                this.lang[key] = config.lang[key];
            }
        }
        this.hrefFormer = config.hrefFormer || '';
        this.hrefLatter = config.hrefLatter || '';
        if(config.getLink && typeof(config.getLink) == 'function'){this.getLink = config.getLink;}
        if(config.click && typeof(config.click) == 'function'){this.click = config.click;}
        if(config.getHref && typeof(config.getHref) == 'function'){this.getHref = config.getHref;}
        if(!this._config){
            this._config = config;
        }
        //validate
        if(this.pno < 1) this.pno = 1;
        this.total = (this.total <= 1) ? 1: this.total;
        if(this.pno > this.total) this.pno = this.total;
        this.prv = (this.pno<=2) ? 1 : (this.pno-1);
        this.next = (this.pno >= this.total-1) ? this.total : (this.pno + 1);
        this.hasPrv = (this.pno > 1);
        this.hasNext = (this.pno < this.total);

        this.inited = true;
    },
    _getHandlerStr : function(n){
        if(this.mode == 'click'){
            return 'href="'+this.getHref(n)+'" onclick="return paginator._clickHandler('+n+')"';
        }
        //link模式，也是默认的
        return 'href="'+this.getLink(n)+'"';
    },
    _clickHandler	: function(n){
        console.log("XXXXX")
        var res = false;
        console.log(this.click);
        console.log(typeof this.click == 'function');
        if(this.click && typeof this.click == 'function'){
            console.log("AAAAAAA");
            res = this.click.call(this,n) || false;
        }
        console.log("XXXXX---->", res);
        return res;
    }
};
