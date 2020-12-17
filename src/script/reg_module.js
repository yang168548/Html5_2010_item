define(['jcookie'], () => {
    return {
        init: function() {
            let $phoneone = null;
            let $passone = null;
            let $passtwo = null;
            let pone = /^1[3|5|8]\d{9}$/;
            let pass = /^[a-z0-9_-]{6,18}$/;
            const $username = $('#phone');
            const $span = $('i').eq(0);
            $username.on('blur', function() {

                if ($username.val() !== '') {
                    if (pone.test($username.val())) {
                        $.ajax({
                            type: 'post',
                            url: 'http://10.31.161.15/new/y_item.com/php/reg.php',
                            data: {
                                xingming: $username.val()
                            }
                        }).done(function(data) { //data就是后端返回的结果
                            if (!data) { //不存在
                                $span.css('color', 'green').html('√');
                                return $phoneone = true;
                            } else { //存在
                                $span.css('color', 'red').html('该手机号已存在');
                                return $phoneone = false;
                            }
                        });
                    } else {
                        $span.css('color', 'red').html('请输入正确的手机号');
                        return $phoneone = false;
                    }
                } else {
                    $span.css('color', 'red').html('手机号不能为空');
                    return $phoneone = false;
                }
            });
            const $pass1 = $('#name1');
            const $span1 = $('i').eq(1);
            $pass1.on('blur', function() {

                if ($pass1.val() !== '') {

                    if (pass.test($pass1.val())) {
                        $span1.css('color', 'green').html('密码格式正确');
                        return $passone = true;
                    } else {
                        $span1.css('color', 'red').html('密码格式错误');
                        return $passone = false;
                    }
                } else {

                    $span1.css('color', 'red').html('密码不能为空');
                    return $passone = false;
                }
            });
            const $pass2 = $('#name2');
            const $span2 = $('i').eq(2);
            $pass2.on('blur', function() {

                if ($pass2.val() !== '') {

                    if ($pass2.val() === $pass1.val()) {
                        $span2.css('color', 'green').html('密码格式正确');
                        return $passtwo = true;
                    } else {
                        $span2.css('color', 'red').html('两次密码不同');
                        return $passtwo = false;
                    }
                } else {
                    $span2.css('color', 'red').html('密码不能为空');
                    return $passtwo = false;
                }
            });

            $('.sub').on('click', function() {
                if ($phoneone == false || $passone == false || $passtwo == false) {
                    console.log(1);
                    $("form").submit(function() {
                        return false;
                    });
                } else if ($phoneone == true && $passone == true && $passtwo == true) {
                    console.log(2);
                    $("form").submit(function() {
                        return true;
                    });
                }

            })
        }
    };
})