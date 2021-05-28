<?php echo $header; ?>
<?php echo $column_left; ?>
<?php echo $content_top; ?>
<ul class="breadcrumb breadcrumb-center">
  <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li class="breadcrumb__item"><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a><i class="icon-arrow-right icons"></i></li>
  <?php } ?>
</ul>

<h1 class="categoryshop__h1"><?php echo $heading_title; ?></h1>
<?php echo $description; ?>


<?php if ($products) { ?>
  <h3><?php echo $text_related_product; ?></h3>
  <div class="shopitems">
    <?php foreach ($products as $product) { ?>
    <div class="shopitem">  
      <img class="shopitem__img" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>">
      <div class="shopitem__price">
        <?php echo $product['name']; ?>
        <span><?php echo $product['price']; ?></span>
      </div>
      <div class="shopitem__description"><?php echo $product['description']; ?></div>
      <div class="button button-color2 button-type2" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');"><?php echo $button_cart; ?></div>
    </div>
    <?php } ?>
  </div>
<?php } ?>

<?php if ($articles) { ?>
  <h3><?php echo $text_related; ?></h3>
  <div class="shopitems">
    <?php foreach ($articles as $article) { ?>
    <div class="shopitem">  
      <a href="<?php echo $article['href']; ?>"><img class="shopitem__img" src="<?php echo $article['thumb']; ?>" alt="<?php echo $article['name']; ?>" title="<?php echo $article['name']; ?>"></a>
      <div class="shopitem__price">
        <a href="<?php echo $article['href']; ?>"><?php echo $article['name']; ?></a>
      </div>
      <div class="shopitem__description"><?php echo $article['description']; ?></div>
      <a href="<?php echo $article['href']; ?>" class="button button-color2 button-type2"><?php echo $button_more; ?></a>
    </div>
    <?php } ?>
  </div>
<?php } ?>

<?php echo $content_bottom; ?>
<?php echo $column_right; ?> 

<script type="text/javascript"><!--

    $('#button-cart').ready(function() {
      $('#button-cart').click(function() {
        $.ajax({
          url: 'index.php?route=checkout/cart/add',
          type: 'post',
          data: $('#product input[type=\'text\'], #product input[type=\'date\'], #product input[type=\'datetime-local\'], #product input[type=\'time\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
          dataType: 'json',

          success: function(json) {
            $('.alert, .text-danger').remove();
            
            if (json['error']) {
              if (json['error']['option']) {
                for (i in json['error']['option']) {
                  $('#input-option' + i).after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
                }
              }
            } 
            
            if (json['success']) {
              $('.breadcrumb').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
              $('#cart').load('index.php?route=module/cart' + ' #cart > *');    
                //$('#cart-total').html(json['total']);
                
                $('html, body').animate({ scrollTop: 0 }, 'slow'); 
              }   
            }
          });
      });
    });
    //--></script> 
    <script type="text/javascript"><!--
      $('button[id^=\'button-upload\']').on('click', function() {
       var node = this;

       $('#form-upload').remove();

       $('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

       $('#form-upload input[name=\'file\']').trigger('click');

       $('#form-upload input[name=\'file\']').on('change', function() {
        $.ajax({
         url: 'index.php?route=product/product/upload',
         type: 'post',		
         dataType: 'json',
         data: new FormData($(this).parent()[0]),
         cache: false,
         contentType: false,
         processData: false,		
         beforeSend: function() {
          $(node).find('i').replaceWith('<i class="fa fa-spinner fa-spin"></i>');
          $(node).prop('disabled', true);
        },
        complete: function() {
          $(node).find('i').replaceWith('<i class="fa fa-upload"></i>');
          $(node).prop('disabled', false);			
        },		
        success: function(json) {
          if (json['error']) {
           $(node).parent().find('input[name^=\'option\']').after('<div class="text-danger">' + json['error'] + '</div>');
         }

         if (json['success']) {
           alert(json['success']);

           $(node).parent().find('input[name^=\'option\']').attr('value', json['file']);
         }
       },			
       error: function(xhr, ajaxOptions, thrownError) {
        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
      }
    });
      });
     });
     //--></script> 
     <script type="text/javascript"><!--
      $('#review').delegate('.pagination a', 'click', function(e) {
       e.preventDefault();

       $('#review').fadeOut('slow');

       $('#review').load(this.href);

       $('#review').fadeIn('slow');
     });         

      $('#review').load('index.php?route=blog/article/review&article_id=<?php echo $article_id; ?>');

      $('#button-review').on('click', function() {

        $.ajax({
          url: 'index.php?route=blog/article/write&article_id=<?php echo $article_id; ?>',
          type: 'post',
          dataType: 'json',
          data: 'name=' + encodeURIComponent($('input[name=\'name\']').val()) + '&text=' + encodeURIComponent($('textarea[name=\'text\']').val()) + '&rating=' + encodeURIComponent($('input[name=\'rating\']:checked').val() ? $('input[name=\'rating\']:checked').val() : '') + '&captcha=' + encodeURIComponent($('input[name=\'captcha\']').val()),

          success: function(json) {
           $('.alert-success, .alert-danger').remove();

           if (json['error']) {
            $('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
          }

          if (json['success']) {
            $('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

            $('input[name=\'name\']').val('');
            $('textarea[name=\'text\']').val('');
            $('input[name=\'rating\']:checked').prop('checked', false);
            $('input[name=\'captcha\']').val('');
          }
        }
      });
      });
      //--></script>
      <script type="text/javascript"><!--
        $(document).ready(function() {
          $('#description').find('a>img').each(function(){
            $(this).parent().addClass('gallery');
          });
          $('#description').magnificPopup({
            delegate: 'a.gallery',
            type: 'image',
            gallery: {
              enabled: true
            }
          });

          gotoReview = function() {
            offset = $('#form-review').offset();
            $('html, body').animate({ scrollTop: offset.top-20 }, 'slow');
          }
          gotoReviewWrite = function() {
            offset = $('#form-review h2').offset();
            $('html, body').animate({ scrollTop: offset.top-20 }, 'slow');
          }

        });
      --></script> 
      <?php echo $footer; ?>