jQuery(document).ready(function($){
////////////////////////////////////////////////
var nav = $('nav');
var doc_body = $('body');
////////////////////////////////////////////////
var speed = 1.3;

//Скрол при клике в меню и стрелку в первом блоке
$('a.scroll[href^="#"], #logo').click(function(event){
  event.preventDefault();
  var $this = $(this);
  var elementClick = $this.attr("href");
  var scrollTop = $(window).scrollTop();
  if($this.attr('id')=='logo'){
  	elementClick = '#start';
  	if(scrollTop==0){
  		window.location.href = $this.attr('href');
  	};
  };
  var destination = $("a[name=" + elementClick.split("#")[1] + "]").offset().top;
  var distanceTime = scrollTop-destination;
  //console.log(scrollTop+"-"+destination+"="+distanceTime);
  if(distanceTime<0){
  	distanceTime = destination-scrollTop;
  };
  if(distanceTime>1000){
	speed = 0.7;
  };
  doc_body.stop().animate( { scrollTop: destination-54 }, distanceTime*speed, 'easeInOutQuad' );
  //Закрыть мобильное меню
});
////////////////////////////////////////////////
// Bootstrap

$('#hire-modal').on('shown.bs.modal', function () {
  $('#client-subject').focus();
});

////////////////////////////////////////////////
var carousel_inner = $('.carousel-inner');
var carousel_indicators = $('.carousel-indicators');
var carousel_control = $('.carousel-control');

//portfolio page
var works_modal_label = $('#works-modal-label');
var modal_info = $('.modal-info');
var programs_list = $('.programs-list');


var last_pr_ex = 0;
var works_modal = $('#works-modal');
$('.pr-ex').click(function(event) {
  var $this = $(this);
  last_pr_ex = $this.parent().index();
  //slideshow
  var images = jQuery.parseJSON( $this.attr('data-images') );
  var slides = '';
  var dots = '';
  //sidebar
  var info = '';
  var weaponry = jQuery.parseJSON( $this.attr('data-weaponry') );
  var icons = '';


  if(images.length > 1){
    carousel_control.fadeIn(0);
    carousel_indicators.fadeIn(0);
  }else{
    carousel_control.fadeOut(0);
    carousel_indicators.fadeOut(0);
  }

  $.each(images, function(index, image) {
    active = '';
    if(index == 0){
      active = 'active';      
    }
    slides += '<div class="item '+active+'"><img src="'+image.url+'" alt="'+image.title+'"></div>';
    dots += '<li data-target="#works-carousel" data-slide-to="'+index+'" class="'+active+'"></li>';
  });

  $i = 3;
  while($i > 0){
    switch($i) {
      case 3:
          attr_part = 'link';
          info_line_name = 'Link';
          break;
      case 2:
          attr_part = 'year';
          info_line_name = 'Year';
          break;
      case 1:
          attr_part = 'country';
          info_line_name = 'Country';
          break;
    }    
    var attr_data = $this.attr('data-'+attr_part);
    if( attr_data !== '' ){
      var info_line_data = '<span>'+attr_data+'</span>';
      if( attr_part == 'link' ){
        var link_text = attr_data;
        var attr_link_text = $this.attr('data-link-text');
        if( attr_link_text !== '' ){
          link_text = attr_link_text;
        }
        info_line_data = '<a href="'+attr_data+'" target="_blank" rel="nofollow">'+link_text+'</a>'
      }
      info += '<li>'+info_line_name+': '+info_line_data+'</li>';      
    }
    $i--;
  }

  $.each(weaponry, function(index, weaponry_item) {
    switch(weaponry_item) {
      case "ps":
          weaponry_title = 'Photoshop';
          break;
      case "il":
          weaponry_title = 'Illustrator';
          break;
      case "id":
          weaponry_title = 'Indesign';
          break;
      case "ac":
          weaponry_title = 'Acrobat';
          break;
      case "xm":
          weaponry_title = 'XMind';
          break;
      case "ax":
          weaponry_title = 'Axure';
          break;
      case "sk":
          weaponry_title = 'Sketch';
          break;
      case "ht":
          weaponry_title = 'HTML5';
          break;
      case "cs":
          weaponry_title = 'CSS3';
          break;
      case "bt":
          weaponry_title = 'Bootstrap';
          break;
      case "jm":
          weaponry_title = 'Joomla';
          break;
      case "wp":
          weaponry_title = 'Wordpress';
          break;
      case "js":
          weaponry_title = 'JavaScript';
          break;
      case "pr":
          weaponry_title = 'Premiere Pro';
          break;
      case "ae":
          weaponry_title = 'After Effects';
          break;
      case "au":
          weaponry_title = 'Audition';
          break;
      case "an":
          weaponry_title = 'Android SDK';
          break;
      case "bl":
          weaponry_title = 'Blender';
          break;
    }
    icons += '<li class="prog-'+weaponry_item+'" title="'+weaponry_title+'"><a href="#'+weaponry_item+'" rel="nofollow">'+weaponry_title+'</a></li>';
  });

  carousel_inner.html(slides);
  carousel_indicators.html(dots);
  works_modal_label.html($this.attr('data-name'));
  modal_info.html(info);
  programs_list.html(icons);
  programs_list.find('a').click(function(event) {
    works_modal.modal('hide');
  });

  works_modal.modal();
});

var works_carousel = $('#works-carousel');

works_modal.on('shown.bs.modal', function (e) {
  //works_carousel.carousel('cycle');
})

works_modal.on('hidden.bs.modal', function (e) {
  //works_carousel.carousel('pause');

  carousel_inner.html('');
  carousel_indicators.html('');
  works_modal_label.html('');
  modal_info.html('');
  programs_list.html('');

  if(need_to_reopen){
    need_to_reopen = false;
    pr_ex_wr.eq(last_pr_ex).find('.pr-ex').click();
  }
});

var pr_ex_wr = $('.pr-ex-wr');
var need_to_reopen = false;
works_modal.find('#next-btn').click(function(event) {
  event.preventDefault();
  need_to_reopen = true;
  works_modal.modal('hide');
});


//workshop page
var sells_modal_label = $('#sells-modal-label');
var price = $('.modal-price span');
var description = $('.modal-description-text');


var last_sells_ex = 0;
var sells_modal = $('#sells-modal');
$('.sells-ex').click(function(event) {
  var $this = $(this);
  last_sells_ex = $this.parent().index();
  //slideshow
  var images = jQuery.parseJSON( $this.attr('data-images') );
  var slides = '';
  var dots = '';


  if(images.length > 1){
    carousel_control.fadeIn(0);
    carousel_indicators.fadeIn(0);
  }else{
    carousel_control.fadeOut(0);
    carousel_indicators.fadeOut(0);
  }

  $.each(images, function(index, image) {
    active = '';
    if(index == 0){
      active = 'active';      
    }
    slides += '<div class="item '+active+'"><img src="'+image.url+'" alt="'+image.title+'"></div>';
    dots += '<li data-target="#sells-carousel" data-slide-to="'+index+'" class="'+active+'"></li>';
  });

  carousel_inner.html(slides);
  carousel_indicators.html(dots);
  sells_modal_label.html($this.attr('data-name'));
  price.html($this.attr('data-price'));
  description.html($this.attr('data-description'));

  sells_modal.modal();
});

var sells_carousel = $('#sells-carousel');

sells_modal.on('shown.bs.modal', function (e) {
  //sells_carousel.carousel('cycle');
})

sells_modal.on('hidden.bs.modal', function (e) {
  //sells_carousel.carousel('pause');

  carousel_inner.html('');
  carousel_indicators.html('');
  sells_modal_label.html('');
  price.html('');
  description.html('');
});

var inquiry_modal = $('#inquiry-modal');
var pr_to_buy_label = inquiry_modal.find('#product-to-buy');
var pr_to_buy_name = inquiry_modal.find('input[name=item]');
var pr_to_buy_price = inquiry_modal.find('input[name=price]');
var pr_to_buy_description = inquiry_modal.find('input[name=description]');
inquiry_modal.on('shown.bs.modal', function () {
  $('#client-email').focus();
});

var sells_ex_wr = $('.sells-ex-wr');
sells_modal.find('#buy-btn').click(function(event) {
  event.preventDefault();

  var choosen_product = sells_ex_wr.eq(last_sells_ex).find('.sells-ex');
  pr_to_buy_label.html(choosen_product.attr('data-name'));
  pr_to_buy_name.val('').val(choosen_product.attr('data-name'));
  pr_to_buy_price.val('').val(choosen_product.attr('data-price'));
  pr_to_buy_description.val('').val(choosen_product.attr('data-description'));

  sells_modal.modal('hide');
  inquiry_modal.modal();
});
////////////////////////////////////////////////
var clean_filter = $("#clean-filter");
function show_by_param(){
  hash_data = window.location.hash.split('#')[1];
  if( hash_data !== '' ){
    pr_ex_wr.fadeOut(0, function(){
      var temp_blocks = pr_ex_wr.filter('.hash-filter-'+hash_data);
      if( temp_blocks.length > 0){
        temp_blocks.fadeIn(0);
        clean_filter.fadeIn(0);
      }else{
        pr_ex_wr.fadeIn(0);
        clean_filter.fadeOut(0);
      }
    });
  }
}

clean_filter.click(function(event) {
  event.preventDefault();
  clean_filter.fadeOut(0);
  window.location.hash = "#";
  show_by_param();
});

$(window).bind('hashchange', function () {
  show_by_param();
});
if(window.location.hash) {
  show_by_param();
}
////////////////////////////////////////////////
function isValidEmailAddress(emailAddress) {
    var pattern = new RegExp(/^(("[\w-+\s]+")|([\w-+]+(?:\.[\w-+]+)*)|("[\w-+\s]+")([\w-+]+(?:\.[\w-+]+)*))(@((?:[\w-+]+\.)*\w[\w-+]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$)|(@\[?((25[0-5]\.|2[0-4][\d]\.|1[\d]{2}\.|[\d]{1,2}\.))((25[0-5]|2[0-4][\d]|1[\d]{2}|[\d]{1,2})\.){2}(25[0-5]|2[0-4][\d]|1[\d]{2}|[\d]{1,2})\]?$)/i);
    return pattern.test(emailAddress);
};

$( "form" ).submit(function( event ) {
  event.preventDefault();
  var form = $(this);
  var after_form = $(".modal-footer");
  var email = form.find('input[type=email]').val();
  var button = form.parents('.modal').find('button[type="submit"]').eq(0);
  var btn_text = button.html();

  if( email == '' || !isValidEmailAddress(email) ){
    form.find('input[type=email]').focus().addClass('wrong');
    setTimeout(function(){
      form.find('input[type=email]').removeClass('wrong');
    }, 1100)
  }else{
    button.html("Sending...").attr('disabled', 'disabled');
    $.ajax({
        url: DJS.ajax_url,
        type: 'POST', 
        data: "action=send_data&" + form.serialize()
        ,//данные, которые передаем (обязательно для action указываем имя нашего хука)
        success: function(data){

          after_form.fadeOut(300);
          form.fadeOut(300, function(){
            button.html(btn_text).removeAttr('disabled');
            form.after('<div id="answer">').fadeOut(0);
            $('#answer').html(data).stop().fadeIn(300);
            setTimeout(function(){
              form.parents('.modal').modal('hide');
              setTimeout(function(){
                $('#answer').remove();
                after_form.stop().fadeIn(0);
                form.stop().fadeIn(0);
              },300);
            },5000);
          });
          //console.log(data);

        }//возвращаемые данные попадают в переменную data
    });
  }
});
////////////////////////////////////////////////

});