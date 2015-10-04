//
//  CircleProgressView.h
//  sunrainapp_ios
//
//  Created by Cmb on 4/10/15.
//  Copyright © 2015 Sunrain. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CircleProgressView : UIView

//中心颜色
@property (strong, nonatomic)UIColor *centerColor;
//圆环背景色
@property (strong, nonatomic)UIColor *arcBackColor;
//圆环色
@property (strong, nonatomic)UIColor *arcFinishColor;
@property (strong, nonatomic)UIColor *arcUnfinishColor;
//百分比数值（0-1）
@property (assign, nonatomic)float percent;
//圆环宽度
@property (assign, nonatomic)float width;

@end
