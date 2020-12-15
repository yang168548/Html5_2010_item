define(['jlazyload'], () => {
    return {
        init: function() {
            console.log(1);
            //轮播图
            function lunbo() {
                const $lunbo = $('.banner-list');
                const $piclist = $('.banner-list li');
                const $btnlist = $('.banner-lk li');
                const $left = $('.lr-left');
                const $right = $('.lr-right');
                const $lr = $('.banner-lr')
                let $num = 0;
                let $timer1 = null;
                let $timer2 = null;

                //1.小圆圈切换
                $btnlist.on('mouseover', function() {
                    $num = $(this).index();
                    $timer1 = setTimeout(function() {
                        tabswitch()
                    }, 300);


                });

                $btnlist.on('mouseout', function() {
                    clearTimeout($timer1);
                });

                //2.左右箭头切换
                $right.on('click', function() {
                    $num++;
                    if ($num > $btnlist.length - 1) {
                        $num = 0;
                    }

                    tabswitch()
                });

                $left.on('click', function() {
                    $num--;
                    if ($num < 0) {
                        $num = $btnlist.length - 1;
                    }

                    tabswitch()
                });

                function tabswitch() {
                    $btnlist.eq($num).addClass('lk-a').siblings().removeClass('lk-a');
                    $piclist.eq($num).addClass('ban-active').siblings().removeClass('ban-active');
                }

                //3.自动轮播
                $timer2 = setInterval(function() {
                    $right.click();
                }, 3000);

                //4.鼠标控制定时器停止和开启。
                $lunbo.hover(function() {
                    clearInterval($timer2);
                }, function() {
                    $timer2 = setInterval(function() {
                        $right.click();
                    }, 3000);
                });
                //5.左右键显示与隐藏

                $lunbo.on(' mouseover ', () => {
                    $lr.show();
                });
                $lr.on(' mouseover ', () => {
                    $lr.show();
                });
                $lunbo.on(' mouseout', () => {
                    $lr.hide();
                });
                $lr.on(' mouseout', () => {
                    $lr.hide();
                });
            }
            lunbo();



            //渲染
            const $list = $('.new-pic');
            $.ajax({
                url: 'http://10.31.161.15/new/y_item.com/php/listdata.php',
                dataType: 'json'
            }).done(function(data) {
                // console.log(data);
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
                // console.log($strhtml);
                // console.log($list);
                $list.html($strhtml);
                //渲染的下面进行懒加载操作
                $(function() { //页面加载完成
                    $("img.lazy").lazyload({
                        effect: "fadeIn" //显示方法：谈入
                    });
                });
            });
            // $list.on('mouseover', () => {
            //     $('.my-like').on('click', () => {
            //         $('.my-like').find('U').addClass('like-active');
            //     })
            // })


            var $topnav = $('.v-6').parent();

            function scroll() {
                var $scrolltop = $(window).scrollTop(); //获取滚动条的top值
                if ($scrolltop >= 300) {
                    $topnav.show();
                } else {
                    console.log(1);
                    $topnav.hide();
                }
            }
            scroll();
            $(window).on('scroll', function() {
                scroll();
            });

            $($topnav).on('click', function() {
                $('html').animate({
                    scrollTop: 0
                });
            });
        }
    }
})