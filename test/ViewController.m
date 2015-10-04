//
//  ViewController.m
//  test
//
//  Created by Cmb on 4/10/15.
//  Copyright © 2015 cmb. All rights reserved.
//

#import "ViewController.h"
#import "CircleProgressView.h"

#define DEFAULT_VOID_COLOR [UIColor clearColor]

@interface ViewController ()
{
    __weak IBOutlet UIView *testView;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CircleProgressView *progress = [[CircleProgressView alloc]initWithFrame:CGRectMake(0, 0, 250, 250)];
    progress.arcFinishColor =
    [self colorWithHexString:@"#73AF36"];
    progress.arcUnfinishColor =
    [self colorWithHexString:@"#73AF36"];
    progress.arcBackColor = [self colorWithHexString:@"#EAEAEA"];
    progress.percent = 0.2;
    progress.width = 15;
    [testView addSubview:progress];
}

//字符串转颜色
- (UIColor *) colorWithHexString: (NSString *) stringToConvert
{
    NSString *cString = [[stringToConvert stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    
    
    if ([cString length] < 6)
        return DEFAULT_VOID_COLOR;
    if ([cString hasPrefix:@"#"])
        cString = [cString substringFromIndex:1];
    if ([cString length] != 6)
        return DEFAULT_VOID_COLOR;
    
    NSRange range;
    range.location = 0;
    range.length = 2;
    NSString *rString = [cString substringWithRange:range];
    
    range.location = 2;
    NSString *gString = [cString substringWithRange:range];
    
    range.location = 4;
    NSString *bString = [cString substringWithRange:range];
    
    
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    
    return [UIColor colorWithRed:((float) r / 255.0f)
                           green:((float) g / 255.0f)
                            blue:((float) b / 255.0f)
                           alpha:1.0f];
}

@end
