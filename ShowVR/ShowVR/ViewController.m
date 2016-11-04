//
//  ViewController.m
//  ShowVR
//
//  Created by shaoxu on 2016/11/4.
//  Copyright © 2016年 sx. All rights reserved.
//

#import "ViewController.h"
#import <GVRPanoramaView.h>
#import <GVRWidgetView.h>
@interface ViewController ()<GVRWidgetViewDelegate>
@property (nonatomic,weak)IBOutlet GVRPanoramaView *panoView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _panoView.enableFullscreenButton = YES;
    _panoView.enableTouchTracking = YES;
    _panoView.enableCardboardButton = YES;
    _panoView.delegate = self;
    [_panoView loadImage:[UIImage imageNamed:@"ttt.png"] ofType:kGVRPanoramaImageTypeStereoOverUnder];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/**
 * Called when the user taps the widget view. This corresponds to the Cardboard viewer's trigger
 * event.
 */
- (void)widgetViewDidTap:(GVRWidgetView *)widgetView{
    //假设我们希望在全景照片下通过点击屏幕然后切换下一个照片，这里就可以通过调用widgetViewDidTap的方法来实现
    //GVRPanoramaImageType是要看你的图片格式，如果你的图片是一张相片形式的，就是mono，有的照片是同一张照片上下叠加形式的就是stereoOverUnder.
    //    [_panoView loadImage:[UIImage imageNamed:@"aaa.png"] ofType:kGVRPanoramaImageTypeStereoOverUnder];
}

/** Called when the widget view's display mode changes. See ::GVRWidgetDisplayMode. */
- (void)widgetView:(GVRWidgetView *)widgetView
didChangeDisplayMode:(GVRWidgetDisplayMode)displayMode{
    
}

/** Called when the content is successfully loaded. */
- (void)widgetView:(GVRWidgetView *)widgetView didLoadContent:(id)content{
    
}

/** Called when there is an error loading content in the widget view. */
- (void)widgetView:(GVRWidgetView *)widgetView
didFailToLoadContent:(id)content
  withErrorMessage:(NSString *)errorMessage{
    
}

@end
