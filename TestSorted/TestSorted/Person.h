//
//  Person.h
//  TestSorted
//
//  Created by zjb on 16/8/22.
//  Copyright © 2016年 zjb. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property (nonatomic,copy) NSString *name;
@property (nonatomic,copy) NSString *age;

-(instancetype)initWithName:(NSString *)sName age:(NSString *)sAge;
@end
