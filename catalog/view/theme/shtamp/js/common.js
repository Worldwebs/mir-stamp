$(function(){

    // Слайдеры на главной
    $('.itemtextimg-link__slider').slick({
        infinite: true,
        dots: false,
        arrows: false,
        autoplay: true,
        slidesToShow: 1,
        slidesToScroll: 1,
    });

    //Карусель
    $('.slider-container').slick({
        infinite: true,
        dots: false,
        arrows: true,
        autoplay: true,
        slidesToShow: 4,
        slidesToScroll: 1,
        prevArrow: '<i class="icon-arrow-left icons"></i>',
        nextArrow: '<i class="icon-arrow-right icons"></i>',

        responsive: [
        {
            breakpoint: 960,
            settings: {
                slidesToShow: 3,
                slidesToScroll: 3,
            }
        },
        {
            breakpoint: 780,
            settings: {
                slidesToShow: 2,
                slidesToScroll: 2,
            }
        },
        {
            breakpoint: 560,
            settings: {
                slidesToShow: 2,
                slidesToScroll: 1,
            }
        }
        ]
    });

    //Popup
    $('.worksitems, .shopitem').magnificPopup({
        delegate: 'a.mpopup',
        type: 'image',
        closeOnContentClick: false,
        closeBtnInside: false,
        mainClass: 'mfp-zoom-in',

        gallery: {
            enabled: true
        },

        zoom: {
            enabled: true,
            duration: 300,
            opener: function(element) {
                return element.find('img');
            }
        },

        callbacks: {
            open: function() {
                $('body').css('overflow-x', 'visible');
            },
            close: function() {
                $('body').css('overflow-x', 'hidden');
            }
        },
        
        image: {
            verticalFit: false
        }   
    });

    // Модальное окно
    $('.button-popup').magnificPopup({
        mainClass: 'mfp-zoom-in',
        removalDelay: 500,

        callbacks: {
            open: function() {
                $('body').css('overflow-x', 'visible');
            },
            close: function() {
                $('body').css('overflow-x', 'hidden');
            }
        },
    });

    // Отправка из формы
    $(".form").submit(function() {
        var th = $(this);
        $.ajax({
            type: "POST",
            url: "catalog/view/theme/shtamp/mail.php",
            data: th.serialize()
        }).done(function() {
            var pp_suc = th.closest('.form').find('.success');
            pp_suc.fadeIn();
            setTimeout(function() {
                th.trigger("reset");
                pp_suc.fadeOut();
                $.magnificPopup.close();
            }, 1500);
        });
        return false;
    });

    // маска на инпут
    $("input[type='tel']").attr("pattern","[+]7[(][0-9]{3}[)][0-9]{3}-[0-9]{2}-[0-9]{2}").inputmask({"mask": "+7(999)999-99-99"});

    //Открытие меню
     $('.button-openmenu i').on('click', function() {
        $(".mobile").toggleClass('animate').promise().done(function() {
            if ($('.fade').attr('style') == 'display: none;') {
                $('.fade').fadeIn();
            } else {
                $('.fade').fadeOut();
            }
        });
    });

    $('.fade').on('click', function() {
        $(".mobile").addClass('animate');
        $(this).fadeOut();
    });

    // Вид меню в мобильном
    if(window.matchMedia('(max-width: 780px)').matches) {
        $('.mobile').append($('.leftnav, .sidebar-fixed .button-color1.button-popup, .sidebar-fixed .search'));
    }    

    // Обработка таблиц
    //$("table").addClass("table table-bordered table-hover table-striped");
    //$('table').stacktable();

    //Языки
    $('.btn-downlang').on('click', function() {
        $('.lang-list').toggleClass('open');
    });

    //Footer menu
    $('.message').insertBefore($('#category_menu'));

    
    $('.catnavig').after($('.categoryshop__h1'));
    $('.catnavig').after($('.breadcrumb-center'));

    //Стилизация чекбоксов

    $('.mfilter-tb-as-td').each(function (e) {    
        $(this).parent('div').children('label').prepend($(this).children('input, i'));
    });


    //Кнопка заказать печать, оснастку
    $(window).scroll(function(){
        if ( $(this).scrollTop() > 200 ){
            $('.step').show(100);
        } else if ($(this).scrollTop() <= 200) {
            $('.step').hide(100);
        }
    });

    //Кнопки слайдера instagramm
    $('.instagram-widget').prepend( $('.swiper-button-next, .swiper-button-prev') );   
});