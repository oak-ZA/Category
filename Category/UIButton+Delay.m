//
//  UIButton+Delay.m
//  Category
//
//  Created by 张奥 on 2019/5/10.
//  Copyright © 2019年 张奥. All rights reserved.
//

#import "UIButton+Delay.h"
#import <objc/runtime.h>
static NSString *delayKey = @"delayKey";
@implementation UIButton (Delay)

-(void)changeBackColor{
    if (self.delayTime > 20) {
        self.backgroundColor = [UIColor redColor];
    }else{
        self.backgroundColor = [UIColor greenColor];
    }
}
-(void)setDelayTime:(NSInteger)delayTime{
    objc_setAssociatedObject(self, @selector(delayTime), @(delayTime), OBJC_ASSOCIATION_ASSIGN);
}
-(NSInteger)delayTime{
    return [objc_getAssociatedObject(self, @selector(delayTime)) integerValue];
}
@end
