      </div>
    </div>
  </div>
</main>

<footer>
  <form class="form popup_form" id="popup">
    <div class="wr">
      <h2><?php echo $text_title; ?></h2>
      <input type="hidden" name="project_name" value="Интернет магазин Мир-штамп">
      <input type="hidden" name="admin_email" value="<?php echo $email; ?>">
      <input type="hidden" name="form_subject" value="Заявка с формы обратной связи">
      <div class="form__group">
        <label for="name"><?php echo $text_name; ?></label>
        <input id="name" type="text" name="name" placeholder="<?php echo $text_namepl; ?>" required="">
      </div>
      <div class="form__group">
        <label for="phone"><?php echo $text_tell; ?></label>
        <input id="phone" type="tel" name="phone" placeholder="<?php echo $text_tellpl; ?>" required="">
      </div>
      <div class="form__group">
        <label for="email"><?php echo $text_email; ?></label>
        <input id="email" type="email" name="email" placeholder="<?php echo $text_emailpl; ?>" required="">
      </div>
      <div class="form__group">
        <label for="text"><?php echo $text_text; ?></label>
        <textarea id="text" name="message" placeholder="<?php echo $text_textpl; ?>"></textarea>
      </div>
      <div class="form__confid">
        <label>
          <input type="checkbox" checked="checked"><i></i>
        </label><a href="/politika-konfidencialnosti/"><?php echo $text_polit; ?></a>
      </div>
      <button class="button button-color2 button-type2"><?php echo $text_button; ?></button>
    </div>
    <div class="success"><?php echo $text_message; ?></div>
  </form>
  <div class="fade" style="display: none;"></div>
</footer>

<!-- Yandex.Metrika counter --> 
<script type="text/javascript"> (function (d, w, c) { (w[c] = w[c] || []).push(function() { try { w.yaCounter25342754 = new Ya.Metrika({ id:25342754, clickmap:true, trackLinks:true, accurateTrackBounce:true, webvisor:true }); } catch(e) { } }); var n = d.getElementsByTagName("script")[0], s = d.createElement("script"), f = function () { n.parentNode.insertBefore(s, n); }; s.type = "text/javascript"; s.async = true; s.src = "https://mc.yandex.ru/metrika/watch.js"; if (w.opera == "[object Opera]") { d.addEventListener("DOMContentLoaded", f, false); } else { f(); } })(document, window, "yandex_metrika_callbacks"); </script> <noscript><div><img src="https://mc.yandex.ru/watch/25342754" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
<!-- /Yandex.Metrika counter -->

<!-- BEGIN JIVOSITE CODE {literal} -->
<script type='text/javascript'>
(function(){ var widget_id = 'YRazoxKMiu';var d=document;var w=window;function l(){
var s = document.createElement('script'); s.type = 'text/javascript'; s.async = true; s.src = '//code.jivosite.com/script/widget/'+widget_id; var ss = document.getElementsByTagName('script')[0]; ss.parentNode.insertBefore(s, ss);}if(d.readyState=='complete'){l();}else{if(w.attachEvent){w.attachEvent('onload',l);}else{w.addEventListener('load',l,false);}}})();</script>
<!-- {/literal} END JIVOSITE CODE -->

</body>
</html>