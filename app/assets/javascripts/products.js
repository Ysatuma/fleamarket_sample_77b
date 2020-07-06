$(function(){
  var htmlText = `<div class="htmlText">入力してください</div>`

  var htmlSelect = `<div class="htmlText">選択して下さい</div>`

  // 追加するカテゴリ選択肢のhtml
  function addoption(category) {
    var addselectoption = `<option value="${category.id}">${category.name}</option>`
    return addselectoption
  }

  // 追加する画像用フォームのhtml
  function addimagebox(){
    var imagebox = `
      <label class='image-form', id = 'image${$(".image-form").length + 1}'>
        <div class="products-new__contents__form__image__area">
          <i class="fa fa-camera products-new__contents__form__image__area__icon"></i>
          </i>
          <p class="products-new__contents__form__image__area__text">
            ドラッグアンドドロップ
            <br>
            またはクリックしてファイルをアップロード
          </p>
        </div>
        <input class="products-new__contents__form__image__select" type="file" name="product[ ][${$(".image-form").length}][image]" id="product_pictures_attributes_${$(".image-form").length}_image">
      </label>`

    return imagebox
  } 

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

      // 選択された親カテゴリーの子カテゴリーのみを表示させる
      var val = $(this).val();
      $.ajax({
        url:  '/exhibition',
        type: "GET",
        data:{ category_id: val}
      })
      .done(function(data){
        $('.hidden1').empty();
        $.each(data.category, function(index, value){
          $('.hidden1').append(addoption(data.category[index]));
        })

      })
    }else {
      
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

      // 選択された子カテゴリーの孫カテゴリーのみを表示させる
      var val = $(this).val();
      $.ajax({
        url:  '/exhibition',
        type: "GET",
        data:{ category_id: val}
      })
      .done(function(data){
        $('.hidden2').empty();
        $.each(data.category, function(index, value){
          $('.hidden2').append(addoption(data.category[index]));
        })

      })
      
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

  //商品一覧の最上部までスクロールさせる
  $(".product-list__categories__back-to-top").on("click",function(){
    $('body, html').animate({scrollTop: 0}, 300, 'linear');
  });

  //DataTransferオブジェクトで、データを格納する箱を作る
  var dataBox = new DataTransfer();
  var file_field = document.querySelector('input[type=file]')
  //fileが選択された時に発火するイベント
  $('.products-new__contents__form__image__select').change(function(){
    var files = $('input[type="file"]').prop('files')[0];
    $.each(this.files, function(i, file){
      //FileReaderのreadAsDataURLで指定したFileオブジェクトを読み込む
      var fileReader = new FileReader();
      var files = $('input[type="file"]').prop('files')[0];
      //DataTransferオブジェクトに対して、fileを追加
      dataBox.items.add(file)
      //DataTransferオブジェクトに入ったfile一覧をfile_fieldの中に代入
      file_field.files = dataBox.files
      console.log(dataBox.files)
      console.log($('.products-new__contents__form__image__select').files)
      var num = $('.item-image').length + 1 + i
      fileReader.readAsDataURL(file);
       //画像が10枚になったら超えたらドロップボックスを削除する
      if (num == 10){
        $('.products-new__contents__form__image__select').css('display', 'none')   
      }
      //読み込みが完了すると、srcにfileのURLを格納
      fileReader.onloadend = function() {
        var src = fileReader.result
        var html= `<div class='item-image' data-image="${file.name}">
                    <div class=' item-image__content'>
                      <div class='item-image__content--icon'>
                        <img src=${src} width="114" height="80" >
                      </div>
                    </div>
                    <div class='item-image__operetion'>
                      <div class='item-image__operetion--delete'>削除</div>
                    </div>
                  </div>`
        //image_box__container要素の前にhtmlを差し込む
        $('.products-new__contents__form__image--field__previews').append(html);
      };
    });    
  })


  // 追加した削除ボタンに対する挙動
  $(document).on("click", '.item-image__operetion--delete', function(){
    //削除を押されたプレビュー要素を取得
    var target_image = $(this).parent().parent()
    //削除を押されたプレビューimageのfile名を取得
    var target_name = $(target_image).data('image')
    console.log(target_name)
    //プレビューがひとつだけの場合、file_fieldをクリア
    if(file_field.files.length==1){
      //inputタグに入ったファイルを削除
      $('input[type=file]').val(null)
      dataBox.clearData();
      console.log(dataBox)
    }else{
      //プレビューが複数の場合
      $.each(file_field.files, function(i,input){
        //削除を押された要素と一致した時、index番号に基づいてdataBoxに格納された要素を削除する
        if(input.name==target_name){
          dataBox.items.remove(i) 
        }
      })
      //DataTransferオブジェクトに入ったfile一覧をfile_fieldの中に再度代入
      file_field.files = dataBox.files

      console.log(dataBox.files)
      console.log(file_field.files)
    }
    //プレビューを削除
    target_image.remove()
    //image-box__containerクラスをもつdivタグのクラスを削除のたびに変更
    var num = $('.item-image').length
    $('#image-box__container').show()
    $('#image-box__container').attr('class', `item-num-${num}`)
  })

});