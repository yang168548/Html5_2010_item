define(['jcookie'], () => {
    return {
        init: function() {
            //1.通过地址栏获取列表页面传入的sid。
            let $sid = location.search.substring(1).split('=')[1];
            if (!$sid) {
                $sid = 1;
            }

            //2.将sid传给后端，后端根据对应的sid返回不同的数据。

            $.ajax({
                url: 'http://10.31.161.15/new/y_item.com/php/detail.php',
                data: {
                    sid: $sid
                },
                dataType: 'json'
            }).done(function(data) {
                //console.log(data);
                //console.log(data.urls);
                //     //获取数据，将数据放入对应的结构中。
                //     $('#smallpic').attr('src', data.url);
                $('.de-title').html(data.title);
                $('.de-price').html(data.price);
                const $list = $('.red-list');
                //     //渲染放大镜下面的小图
                let $picurl = data.urls.split(','); //将数据转换成数组。
                let $strhtml = '';

                // console.log($picurl);
                $.each($picurl, function(index, value) {
                    $strhtml += `
                    <li>
                        <img src="${value}" width="58" height="58">
                    </li>
                `;

                    $('.red-viw img').attr("src", data.url)
                });
                $list.html($strhtml);
                //改变展示图片的路径

                $('.red-list').on('mouseover', 'li', function() {
                        // console.log($(this));
                        let $src = $(this).find('img').attr('src');
                        // console.log($src);
                        $('.red-viw img').attr('src', $src)

                    })
                    //数量加减

                function sit() {
                    const one = 1
                    $('.de-num input').val(one)
                }
                let $val = $('.de-num input').val();
                if (!$val || $val < 1) {
                    sit();
                }

                $('.de-num input').on('focusout', function() {
                    let $val = parseInt($('.de-num input').val());
                    if ($val >= 1) {
                        // console.log($val);
                    } else {
                        sit();
                    }
                })
                const $jian = $('.de-num span').eq(0);

                $jian.on('click', function() {

                    let $val = parseInt($('.de-num input').val());
                    if ($val > 1) {
                        $val = $val - 1;
                        console.log($val);
                        $('.de-num input').val($val)
                    }
                })
                const $jia = $('.de-num span').eq(1);
                $jia.on('click', function() {
                        let $val = parseInt($('.de-num input').val());
                        $val = $val + 1;
                        console.log($val);
                        $('.de-num input').val($val)

                    })
                    //coolie部分
                let arrsid = []; //存放cookie sid
                let arrnum = []; //把商品数量存放入cookie

                //获取当前cookie数据
                function getcta() {
                    if ($.cookie('cookiesid') && $.cookie('cookienum')) {
                        arrsid = $.cookie('cookiesid').split(',');
                        arrnum = $.cookie('cookienum').split(',');
                    }
                }

                $('.de-cart a').on('click', function() {
                    getcta();
                    if ($.inArray($sid, arrsid) === -1) { //第一次添加商品
                        arrsid.push($sid); //添加sid
                        $.cookie('cookiesid', arrsid, { expires: 10, path: '/' });
                        arrnum.push($('.de-num input').val()); //添加数量
                        $.cookie('cookienum', arrnum, { expires: 10, path: '/' });
                    } else { //多次添加，数量累加
                        //通过$sid获取商品数量的索引

                        let $index = $.inArray($sid, arrsid);
                        //原来的数量+新加的数量进行重新赋值，添加cookie
                        arrnum[$index] = parseInt(arrnum[$index]) + parseInt($('.de-num input').val()); //重新赋值
                        $.cookie('cookienum', arrnum, { expires: 10, path: '/' });
                    }
                });

            });
        }
    }
});