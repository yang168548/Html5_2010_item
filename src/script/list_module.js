define(['jlazyload'], () => {
    return {
        init: function() {
            const $list = $('.new-pic');
            $.ajax({
                url: 'http://localhost/new/y_item.com/php/listdata.php',
                dataType: 'json'
            }).done(function(data) {
                // console.log(data);
                let $strhtml = '';
                $.each(data, function(index, value) {
                    $strhtml += `
                    <li id="${value.sid}">
                    <a href="http://localhost/new/y_item.com/src/detail.html?sid=${value.sid}">
                        <img class="lazy" data-original="${value.url}" width="220" height="220" >
                    </a>
                    <span>￥<i >${value.price}</i></span>
                    <p>${value.title}</p>
                    <div class="my-like "><u></u></div>
                   </li> 
                    `;
                });

                $list.html($strhtml);

                $(function() {
                    $("img.lazy").lazyload({
                        effect: "fadeIn"
                    });
                });
            });
        }
    }
})