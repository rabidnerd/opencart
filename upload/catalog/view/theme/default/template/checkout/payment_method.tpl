<?php if ($error_warning) { ?>
<div class="alert alert-warning"><i class="icon-exclamation-sign"></i> <?php echo $error_warning; ?></div>
<?php } ?>
<div class="row-fluid">
  <div class="span12">
    <?php if ($payment_methods) { ?>
    <p><?php echo $text_payment_method; ?></p>
    <?php foreach ($payment_methods as $payment_method) { ?>
    <p><label class="radio">
      <?php if ($payment_method['code'] == $code || !$code) { ?>
      <?php $code = $payment_method['code']; ?>
      <input type="radio" name="payment_method" value="<?php echo $payment_method['code']; ?>" checked="checked" />
      <?php } else { ?>
      <input type="radio" name="payment_method" value="<?php echo $payment_method['code']; ?>" />
      <?php } ?>
      <?php echo $payment_method['title']; ?></label></p>
    <?php } ?>
    <?php } ?>
    <p><strong><?php echo $text_comments; ?></strong></p>
    <p>
      <textarea name="comment" rows="8" style="width: 98%"><?php echo $comment; ?></textarea>
    </p>
    <?php if ($text_agree) { ?>
    <div class="buttons">
      <div class="pull-right"><?php echo $text_agree; ?>
        <?php if ($agree) { ?>
        <input type="checkbox" name="agree" value="1" checked="checked" />
        <?php } else { ?>
        <input type="checkbox" name="agree" value="1" />
        <?php } ?>
        &nbsp; <input type="button" value="<?php echo $button_continue; ?>" id="button-payment-method" class="btn btn-primary" />
      </div>
    </div>
    <?php } else { ?>
    <div class="buttons">
      <div class="pull-right">
        <input type="button" value="<?php echo $button_continue; ?>" id="button-payment-method" class="btn btn-primary" />
      </div>
    </div>
    <?php } ?>
  </div>
</div>
<script type="text/javascript"><!--
$(document).ready(function() {
	/*
    $('.colorbox').colorbox({
        maxWidth: 640,
        width: "85%",
        height: 480
    });
	*/
});
//--></script>