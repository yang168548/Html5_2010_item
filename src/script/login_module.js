define(['jcookie'], () => {
    return {
        init: function() {
            const $username = $('#phone');
            const $password = $('#name1');
            const $login = $('#login'); //登录按钮

            $login.on('click', function() {
                $.ajax({
                    type: 'post',
                    url: 'http://10.31.161.15/new/y_item.com/php/login.php',
                    data: {
                        user: $username.val(),
                        pass: $password.val()
                    }
                }).done(function(data) {
                    if (!data) { //登录失败
                        alert('用户名或者密码有误!');
                        $password.val(''); //密码清空
                    } else { //登录成功
                        location.href = 'index_1.html';
                        localStorage.setItem('loginname', $username.val());
                    }
                })
            });
        }
    };
})