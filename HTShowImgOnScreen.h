//
//  HTShowImgOnScreen.h
//
//  Created by guohaitao on 2017/5/20.
//  Copyright © 2017年 guohaitao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HTShowImgOnScreen : UIView

/**
 管理显示图片的对象
 
 @return 返回管理对象
 */
+ (HTShowImgOnScreen *)defaultManager;


/**
 设置图片url，占位图

 @param picUrl 图片 url
 @param placeHoldImg 占位图
 */
- (void)ShowImgOnScreenWithUrl:(NSString *)picUrl withPlaceHoldImg:(NSString *)placeHoldImg;

@end
