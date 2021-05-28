<?php foreach ($modules as $module) { ?>
  <div class="message">
    <div class="contacts">
      <?php echo $module; ?>
    </div>
    <form class="form">
      <div class="wr">
        <h2><?php echo $text_title; ?></h2>
        <input type="hidden" name="project_name" value="Интернет магазин Мир-штамп">
        <input type="hidden" name="admin_email" value="<?php echo $email; ?>">
        <input type="hidden" name="form_subject" value="Заявка с формы обратной связи">
        <div class="form__group">
          <label for="name"><?php echo $text_name; ?></label>
          <input id="name" type="text" name="Имя" placeholder="<?php echo $text_namepl; ?>" required="">
        </div>
        <div class="form__group">
          <label for="phone"><?php echo $text_tell; ?></label>
          <input id="phone" type="tel" name="Телефон" placeholder="<?php echo $text_tellpl; ?>" required="">
        </div>
        <div class="form__group">
          <label for="email"><?php echo $text_email; ?></label>
          <input id="email" type="email" name="email" placeholder="<?php echo $text_emailpl; ?>" required="">
        </div>
        <div class="form__group">
          <label for="text"><?php echo $text_text; ?></label>
          <textarea id="text" name="Сообщение" placeholder="<?php echo $text_textpl; ?>"></textarea>
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
  </div>
<?php } ?>