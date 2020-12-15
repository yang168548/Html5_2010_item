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

            });
        }
    }
});