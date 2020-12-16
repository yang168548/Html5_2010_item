define(['jcookie'], () => {
    return {
        init: function() {
            $("form").submit(function() {
                return false;
            });
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
                            } else { //存在
                                $span.css('color', 'red').html('该手机号已存在');
                            }
                        });
                    } else {
                        $span.css('color', 'red').html('请输入正确的手机号');
                    }
                } else {
                    $span.css('color', 'red').html('手机号不能为空');
                }
            });
            const $pass1 = $('data-name[name1]');

            const $span1 = $('i').eq(1);
            $pass1.on('blur', function() {
                if ($pass.val() !== '') {
                    if (pass.test($passe.val())) {
                        $span.css('color', 'green').html('密码格式正确');
                    } else {
                        $span.css('color', 'red').html('密码格式错误');
                    }
                } else {
                    $span.css('color', 'red').html('密码不能为空');
                }
            });


            $('sub').on('click', function() {

            })
        }
    };
})