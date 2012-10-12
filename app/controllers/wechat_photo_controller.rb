class WechatPhotoController < UIViewController
  extend IB
  include MotionWechat::Interface

  outlet :image_view
  outlet :take_photo_btn
  outlet :send_photo_btn

  def take_photo
    BW::Device.camera.rear.picture(media_types: [:image]) do |result|
      image = result[:original_image]
      image_view = UIImageView.alloc.initWithImage(image)
    end
  end

  def send_photo
    image_data = UIImagePNGRepresentation image_view.image
    send_image_content('', image_data, title: 'random photo', description: 'random photo')
  end
end