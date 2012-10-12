class WechatTextController < UIViewController
  extend IB
  include MotionWechat::Interface

  outlet :send_text_btn
  outlet :send_text_field

  def send_text(sender)

    puts send_text_field.text
    send_text_content(send_text_field.text)
  end 

end