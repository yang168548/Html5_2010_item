define(['pagination', 'jlazyload'], () => {
    return {
        init: function() {
            const $list = $('.new-pic');

            $.ajax({
                url: 'http://10.31.161.15/new/y_item.com/php/list.php',
                dataType: 'json'
            }).done(function(datalist) {
                // console.log(data);
                data = datalist.pagedata
                let $strhtml = '';
                $.each(data, function(index, value) {
                    $strhtml += `
                    <li id="${value.sid}">
                    <a href="detail.html?sid=${value.sid}">
                        <img class="lazy" data-original="${value.url}" width="220" height="220" >
                    </a>
                    <span>￥<i >${value.price}</i></span>
                    <p>${value.title}</p>
                    <div class="my-like "><u></u></div>
                   </li> 
                    `;
                });

                $list.html($strhtml);

                $("img.lazy").lazyload({ effect: "fadeIn" });

                $('.page').pagination({
                    pageCount: datalist.pageno, //总的页数
                    jump: true, //是否开启跳转到指定的页数，布尔值。
                    prevContent: '上一页', //将图标改成上一页下一页。
                    nextContent: '下一页',
                    callback: function(api) {
                        console.log(api.getCurrent()); //获取当前的点击的页码。
                        $.ajax({
                            url: 'http://10.31.161.15/new/y_item.com/php/list.php',
                            data: {
                                page: api.getCurrent()
                            },
                            dataType: 'json'
                        }).done(function(datalist) {
                            data = datalist.pagedata; //获取接口里面数据
                            let $strhtml = '';
                            $.each(data, function(index, value) {
                                $strhtml += `
                                <li id="${value.sid}">
                                <a href="detail.html?sid=${value.sid}">
                                    <img class="lazy" data-original="${value.url}" width="220" height="220" >
                                </a>
                                <span>￥<i >${value.price}</i></span>
                                <p>${value.title}</p>
                                <div class="my-like "><u></u></div>
                               </li> 
                                    `;
                            });
                            $list.html($strhtml);
                            //懒加载
                            $("img.lazy").lazyload({ effect: "fadeIn" });

                        });
                    }
                });

            });
        }
    }
})