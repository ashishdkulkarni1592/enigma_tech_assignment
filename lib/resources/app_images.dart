class AppImages {
  static final AppImages _image = AppImages._internal();

  AppImages._internal();

  factory AppImages() => _image;

  image(key) => "assets/images/$key";

  get ic_thumbs_up => image("ic_thumbs_up.png");

  get ic_kissing_girl => image("ic_kissing_girl.png");

  get ic_euro_sack => image("ic_euro_sack.png");

  get ic_gift_box => image("ic_gift_box.png");

  get ic_send => image("ic_send.png");

  get ic_twitter => image("ic_twitter.png");

  get ic_facebook => image("ic_facebook.png");

  get ic_american_express => image("ic_american_express.png");

  get ic_visa => image("ic_visa.png");

  get ic_paypal => image("ic_paypal.png");

  get ic_master_card => image("ic_master_card.png");
}
