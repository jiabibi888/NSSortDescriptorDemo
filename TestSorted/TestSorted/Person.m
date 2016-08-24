//
//  Person.m
//  TestSorted
//
//  Created by zjb on 16/8/22.
//  Copyright © 2016年 zjb. All rights reserved.
//

#import "Person.h"

@implementation Person
-(instancetype)initWithName:(NSString *)sName age:(NSString *)sAge{
    self = [super init];
    if (self) {
        self.name = sName;
        self.age = sAge;
    }
    return  self;
}
@end
