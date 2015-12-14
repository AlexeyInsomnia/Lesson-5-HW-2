//
//  APHuman.h
//  Lesson 5 HW #2
//
//  Created by Alex on 14.12.15.
//  Copyright © 2015 Alex. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface APHuman : NSObject


@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) float height;
@property (assign, nonatomic) float weight;
@property (strong, nonatomic) NSString* isMale;

- (void) moveMent;



@end
