//
//  HTShowImgOnScreen.m
//
//  Created by guohaitao on 2017/5/20.
//  Copyright © 2017年 guohaitao. All rights reserved.
//

#import "HTShowImgOnScreen.h"
@interface HTShowImgOnScreen()
@property (nonatomic, strong) UIImageView * bgImgVw;
@property (nonatomic, strong) UIView * bgScreenVw;
@end

@implementation HTShowImgOnScreen

- (UIImageView *)bgImgVw{
    if (_bgImgVw == nil) {
        _bgImgVw = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, KScreenW, KScreenW)];
        _bgImgVw.center = CGPointMake(KScreenW / 2, KScreenH / 2);
        _bgImgVw.contentMode = UIViewContentModeScaleAspectFit;
    }
    return  _bgImgVw;
}
- (UIView *)bgScreenVw{
    if (_bgScreenVw == nil) {
        _bgScreenVw = [[UIView alloc] init];
        _bgScreenVw.frame = CGRectMake(0, 0, KScreenW, KScreenH);
        _bgScreenVw.center = CGPointMake(KScreenW / 2, KScreenH / 2);
        _bgScreenVw.backgroundColor = [UIColor colorWithWhite:0.0f alpha:0.3];
        [_bgScreenVw addSubview:self.bgImgVw];
        
        UITapGestureRecognizer * tapGest = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(clikHidden)];
        [_bgScreenVw addGestureRecognizer:tapGest];
        
    }
    return _bgScreenVw;
}
- (void)clikHidden{
    [self.bgScreenVw removeFromSuperview];
}
+ (HTShowImgOnScreen *)defaultManager{
    static dispatch_once_t onceToken;
    static HTShowImgOnScreen * managerShowImg;
    dispatch_once(&onceToken, ^{
        managerShowImg = [[HTShowImgOnScreen alloc] init];
    });
    return managerShowImg;
}
- (void)ShowImgOnScreenWithUrl:(NSString *)picUrl withPlaceHoldImg:(NSString *)placeHoldImg{
    [[UIApplication sharedApplication].keyWindow addSubview:self.bgScreenVw];
    [self.bgImgVw sd_setImageWithURL:[NSURL URLWithString:picUrl] placeholderImage:[UIImage imageNamed:placeHoldImg]];
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
