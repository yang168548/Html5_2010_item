define(['jcookie'], () => {
    return {
        init: function() {
            function getcookietoarray() {
                if ($.cookie('cookiesid') && $.cookie('cookienum')) {
                    let $arrsid = $.cookie('cookiesid').split(','); //[1,3,5]
                    let $arrnum = $.cookie('cookienum').split(','); //[10,33,50]
                    $.each($arrsid, function(index, value) {
                        rendergoods($arrsid[index], $arrnum[index]); //index:数组的索引
                    });
                }
            }
            getcookietoarray();

            function rendergoods(sid, num) {
                $.ajax({
                    url: 'http://10.31.161.15/new/y_item.com/php/listdata.php',
                    dataType: "json",
                }).done(function(data) {
                    $.each(data, function(index, value) {
                        if (sid === value.sid) { //通过sid的对比找到对应的数据。
                            let $clonebox = $('.list-body2 .list-body:hidden').clone(true, true); //克隆
                            $clonebox.find('.p-img img').attr('src', value.url);
                            $clonebox.find('.p-title a').html(value.title);
                            $clonebox.find('.p-price').html(value.price);
                            $clonebox.find('.p-num input').val(num);
                            $clonebox.find('.p-sum').html((value.price * num).toFixed(2));
                            $clonebox.css('display', 'block'); //显示
                            $('.list-body2').append($clonebox); //追加
                        }
                    })
                })
            }

            function sit() {
                const one = 1
                $('.p-num input').val(one)
            }
            $('.list-body2').on('focusout', '.p-num input', function() {
                let $val = parseInt($(this).val());
                if ($val >= 1) {

                    let $pic = $(this).parent().parent().parent().find('.p-price').html();
                    let $psum = $(this).parent().parent().parent().find('.p-sum');
                    $psum.html($pic * $val);
                    Totalprice();
                } else {
                    sit();
                }
            })
            const $jian = $('.p-num span').eq(0);

            $jian.on('click', function() {
                let $val = parseInt($(this).parent().find('input').val());
                if ($val > 1) {
                    $val = $val - 1;
                    $(this).parent().find('input').val($val)
                    let $pic = $(this).parent().parent().parent().find('.p-price').html()
                    let $psum = $(this).parent().parent().find('~ .p-sum')
                    $psum.html($pic * $val);
                    Totalprice();
                }
            })
            const $jia = $('.p-num span').eq(1);
            $jia.on('click', function() {
                let $val = parseInt($(this).parent().find('input').val());
                $val = $val + 1;
                $(this).parent().find('input').val($val)
                let $pic = $(this).parent().parent().parent().find('.p-price').html();
                let $psum = $(this).parent().parent().parent().find('.p-sum');
                $psum.html($pic * $val);
                Totalprice();
            })

            $('.list-body2').on('click', '.cek', function() {
                // 获取所有商品的复选框
                let shopbtn = $(this).closest('.shopcar').find('.cek');

                // 获取被勾选的复选框
                let shopbtnC = $(this).closest('.shopcar').find('.cek:checked');

                // 获取全选复选框
                let shopS = $(this).closest('.shopcar').find('.allck');

                if (shopbtn.length == shopbtnC.length) {
                    shopS.prop('checked', true);
                    Totalprice();
                } else {
                    shopS.prop('checked', false);
                    Totalprice();
                }
            });

            $('.allck').on('click', function() {
                if ($(this).prop('checked')) {
                    $(this).closest('.shopcar').find('.cek').prop('checked', true);
                    Totalprice();
                } else {
                    $(this).closest('.shopcar').find('.cek').prop('checked', false);
                    Totalprice();
                }
            });

            function Totalprice() {
                let oprice = 0;
                $('.list-body:visible').each(function() {
                    if ($(this).find('.cek').is(':checked')) {
                        oprice += parseInt($(this).closest('.list-body').find('.p-sum').text());
                    }
                    $('.settle p').html(`<span>合计：</span>${oprice.toFixed(2)}<span>元</span><a href="javascript:;">去结算</a>`);
                });
            }


            $('.list-body2').on('click', '.p-del', function() {
                $(this).parent().remove();
            });

        }
    }
});