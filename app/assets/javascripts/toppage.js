$(function(){

  // カテゴリ一覧選択時に、カテゴリ1を表示
  $('.search-header__lower__products__categories').on('mouseenter', function(e){
    $('.search-header__lower__products__categories__lists--lv1').addClass('active');
    
  })

  $('.search-header__lower__products__categories').on('mouseleave', function(e){
    $('.search-header__lower__products__categories__lists--lv1').removeClass('active');
  })

  // カテゴリ1選択時に、カテゴリ2を表示
  $('.search-header__lower__products__categories__lists--lv1__content').on('mouseenter', function(e){
    console.log("in")
    $(this).find('.search-header__lower__products__categories__lists--lv1__content--lv2').addClass('active');
    
  })

  $('.search-header__lower__products__categories__lists--lv1__content').on('mouseleave', function(e){
    console.log("out")
    $(this).find('.search-header__lower__products__categories__lists--lv1__content--lv2').removeClass('active');

  })

    // カテゴリ2選択時に、カテゴリ3を表示
    $('.search-header__lower__products__categories__lists--lv1__content--lv2__content').on('mouseenter', function(e){
      console.log("in")
      $(this).find('.search-header__lower__products__categories__lists--lv1__content--lv2__content--lv3').addClass('active');
      
    })
  
    $('.search-header__lower__products__categories__lists--lv1__content--lv2__content').on('mouseleave', function(e){
      console.log("out")
      $(this).find('.search-header__lower__products__categories__lists--lv1__content--lv2__content--lv3').removeClass('active');
  
    })
  
})