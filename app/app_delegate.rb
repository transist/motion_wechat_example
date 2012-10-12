class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame UIScreen.mainScreen.bounds
    @client = MotionWechat::Client.new('wxf196cffb7e9c49df')
    storyboard = UIStoryboard.storyboardWithName "wechat", bundle: nil
    @window.rootViewController = storyboard.instantiateInitialViewController
    @window.makeKeyAndVisible
    true
  end

  def application(application, openURL:url, sourceApplication:sourceApplication, annotation:annotation)
    @client.handle_openURL(url, self)
  end

  def onReq
    title = 'onReq'
    msg = 'onReq message'
    alert = UIAlertView.alloc.initWithTitle(title, message:msg, delegate:self, cancelButtonTitle:"OK", otherButtonTitles:nil)
    alert.show
  end

  def onResp
    title = "onResp"
    msg = 'onResp message'
    alert = UIAlertView.alloc.initWithTitle(title, message:msg, delegate:self, cancelButtonTitle:"OK", otherButtonTitles:nil)
    alert.show
  end
  
end
