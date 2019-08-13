//
//  NSObject+Extention.m
//  Category
//
//  Created by 张奥 on 2019/5/23.
//  Copyright © 2019年 张奥. All rights reserved.
//

#import "NSObject+Extention.h"
#import <objc/runtime.h>
static char *nameKey = "nameKey";
static char *ageKey = "ageKey";
static char *labelKey = "labelKey";
@implementation NSObject (Extention)

-(void)setName:(NSString *)name{
    objc_setAssociatedObject(self, nameKey, name, OBJC_ASSOCIATION_COPY);
}
-(NSString*)name{
    return objc_getAssociatedObject(self, nameKey);
}

-(void)setAge:(NSInteger)age{
    objc_setAssociatedObject(self, ageKey, @(age), OBJC_ASSOCIATION_ASSIGN);
}
-(NSInteger)age{
    
    return [objc_getAssociatedObject(self, ageKey) integerValue];
}
-(void)setLabel:(UILabel *)label{
    objc_setAssociatedObject(self, labelKey, label, OBJC_ASSOCIATION_RETAIN);
}
-(UILabel*)label{
    return objc_getAssociatedObject(self, labelKey);
}
@end
