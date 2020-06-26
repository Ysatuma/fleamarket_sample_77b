$(function(){
  var htmlText = `<div class="htmlText">入力してください</div>`

  var htmlSelect = `<div class="htmlText">選択して下さい</div>`
  // 商品の説明のテキストに入力時、入力した文字数を表示
  $(".contents__form__item__textarea").on('keyup', function() {
    var count = $(this).val().length;
    $('.contents__form__item__count').text(count + '/1000')
  });

  // 入力必須なテキスト欄が未入力時に警告文を表示、入力時に警告文を削除
  $(".insert").on('keyup blur', function() {
    if ($(this).val().length == 0 && !($(this).next('.htmlText').length)) {
      $(this).css({'border-color': 'red'})
      $(this).after(htmlText)
    } else if ($(this).val().length != 0 && ($(this).next('.htmlText').length)) {
      $(this).css({'border-color': ''})
      $(this).next('.htmlText').remove();
    }
  });

  // セレクト欄で未選択でフォーカスが外れた時に、警告文を表示
  $(".category-select").on('blur', function() {
    if ($(this).val().length == 0 && !($(this).next('.htmlText').length)) {
      $(this).css({'border-color': 'red'})
      $(this).after(htmlSelect);
    }
  });

  // セレクト欄で選択に、警告文を削除
  $(".category-select").on("change",function() {
    if ( $(this).val() != "" ) {
      $(this).next('.htmlText').remove()
      $(this).css({'border-color': ''})
    } 
  });

  // カテゴリー欄で選択・未選択時に、サブカテゴリー1以下の表示・削除
  $(".products-select").on("change",function() {
    // ↓controller反映時にifの条件の変更をお願いします
    if ( $(this).val() != "" ) {
      $(".hidden1").css({"display": "block"})
    } else {
      $(".hidden1,.hidden2,.hidden-size,.hidden3").css({"display": "none", 'border-color': ''})
      $(".hidden1,.hidden2,.hidden3").next('.htmlText').remove()
      $(".hidden1,.hidden2,.hidden3").val("");
    }
  });
  
  // サブカテゴリー1欄で選択・未選択時に、サブカテゴリー2以下の表示・削除
  $(".hidden1").on("change",function() {
    // ↓controller反映時にifの条件の変更をお願いします
    if ( $(this).val() != "" ) {
      $(".hidden2").css({"display": "block"})
    } 
    else {
      $(".hidden2,.hidden-size,.hidden3").css({"display": "none", 'border-color': ''})
      $(".hidden2,.hidden3").next('.htmlText').remove()
      $(".hidden2,.hidden3").val('');
    }
  });

  // サブカテゴリー2欄で選択・未選択時に、サイズ選択肢の表示・削除
  $(".hidden2").on("change",function() {
    // ↓controller反映時にifの条件の変更をお願いします
    if ( $(this).val() != "" ) {
      $(".hidden3").css({"display": "block"})
      $(".hidden-size").css({"display": "flex"})
    } 
    else {
      $(".hidden-size,.hidden3").css({"display": "none", 'border-color': ''})
      $(".hidden3").next('.htmlText').remove()
      $(".hidden3").val('');
    }
  });
});