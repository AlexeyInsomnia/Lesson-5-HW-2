//
//  AppDelegate.m
//  Lesson 5 HW #2
//
//  Created by Alex on 14.12.15.
//  Copyright © 2015 Alex. All rights reserved.
//

#import "AppDelegate.h"
#import "APHuman.h"
#import "APRunner.h"
#import "APBicycler.h"
#import "APSwimmer.h"
#import "APCoder.h"
#import "APDog.h"
#import "APCat.h"
#import "APAnimal.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    NSLog(@"******************* baby mode is ON task 1-4 ***********************");
    
    
    
    APHuman* human1 = [[APHuman alloc] init];
    human1.name = @"Wasya human";
    human1.height = 180.f;
    human1.weight = 60.f;
    human1.isMale = @"Male";
    
    APRunner* runner1 = [[APRunner alloc] init];
    runner1.name = @"Artem runner";
    runner1.height = 170.f;
    runner1.weight = 65.f;
    runner1.isMale = @"Male";
    
    APBicycler* bicycler1 = [[APBicycler alloc] init];
    bicycler1.name = @"Kolya bicycler";
    bicycler1.height = 185.f;
    bicycler1.weight = 55.f;
    bicycler1.isMale = @"Male";
    
    APSwimmer* swimmer1 = [[APSwimmer alloc] init];
    swimmer1.name = @"Beauty swimmer";
    swimmer1.height = 158.f;
    swimmer1.weight = 45.f;
    swimmer1.isMale = @"FeMale";
    
    NSMutableArray* array = [[NSMutableArray alloc] initWithObjects:human1,
                                                      runner1,
                                                      bicycler1,
                                                      swimmer1,
                                                      nil];
    
    for (APHuman* obj in array) {
        NSLog(@"I AM: %@, %.2f, %.2f, %@", obj.name, obj.height, obj.weight, obj.isMale);
        [obj moveMent];
    }

    NSLog(@"******************* student mode is ON task 5-8 ***********************");

    
    APCoder* coder1 = [[APCoder alloc] init];
    coder1.name = @"John coder";
    coder1.height = 177.5f;
    coder1.weight = 65.5f;
    coder1.isMale = @"Male";
    coder1.age = 37;
    coder1.lastName = @"Golt";
    
    [array addObject:coder1];
    /*
    for (APHuman* obj in array) {
        NSLog(@"I AM: %@, %.2f, %.2f, %@", obj.name, obj.height, obj.weight, obj.isMale);
        [obj moveMent];
        
        if ([obj isKindOfClass:[APCoder class]]) {
            APCoder* coder =(APCoder*) obj;
            NSLog(@"last name is - %@,  age is - %ld years old", coder.lastName, coder.age);

        }
    }
    */
    
    for (int i=[array count]-1; i>=0; i--) { // i dont understand what a problem here
        
        APHuman* obj = [array objectAtIndex:i];
        NSLog(@"I AM: %@, %.2f, %.2f, %@", obj.name, obj.height, obj.weight, obj.isMale);
        [obj moveMent];
        
        if ([obj isKindOfClass:[APCoder class]]) {
            APCoder* coder =(APCoder*) obj;
            NSLog(@"last name is - %@,  age is - %ld years old", coder.lastName, coder.age);
            
        }
    }
    
    NSLog(@"******************* master mode is ON task 8-11 ***********************");
    
    
    APAnimal* animal1 = [[APAnimal alloc] init];
    animal1.petName = @"Zorka";
    animal1.petColor = @"Braun";
    
    APCat* cat1 = [[APCat alloc ] init];
    cat1.petName = @"Onyxia";
    cat1.petColor = @"orange";
    
    APDog* dog1 = [[APDog alloc ] init];
    dog1.petName = @"Semik";
    dog1.petColor = @"black";
    
    [array addObject:animal1];
    [array addObject:cat1];
    [array addObject:dog1];
    
    
    
    for (int i=[array count]-1; i>=0; i--) { // i dont understand what a problem here
        
        APHuman* obj = [array objectAtIndex:i];
        
        if ([obj isKindOfClass:[APAnimal class]]) {
            APAnimal* animal = (APAnimal*) obj;
            NSLog(@"%@, %@", animal.petName, animal.petColor);
            [animal petMethod];
        } else {
        
        
        
        NSLog(@"I AM: %@, %.2f, %.2f, %@", obj.name, obj.height, obj.weight, obj.isMale);
        [obj moveMent];
        
        if ([obj isKindOfClass:[APCoder class]]) {
            APCoder* coder =(APCoder*) obj;
            NSLog(@"last name is - %@,  age is - %ld years old", coder.lastName, coder.age);
            
        }
    }
    }
    
    NSLog(@"******************* star mode is ON task 12-13 ***********************");
    
    NSArray* arrayHuman = [[NSArray alloc] initWithObjects:human1,
                           runner1,
                           bicycler1,
                           swimmer1, coder1, nil];
    
    NSArray* arrayAnimal = [[NSArray alloc] initWithObjects:animal1, cat1, dog1, nil];
    
    NSInteger countHuman = [arrayHuman count];
    NSInteger countAnimal = [arrayAnimal count];
    
    for (int i = 0; i<(countHuman >countAnimal ? countHuman:countAnimal); i++) {
        if (i<=(countHuman-1)) {
            APHuman* newHuman = [arrayHuman objectAtIndex:i];
            NSLog(@"------THIS IS CLASS HUMAN----------");
            NSLog(@"I AM: %@, %.2f, %.2f, %@", newHuman.name, newHuman.height, newHuman.weight, newHuman.isMale);
            [newHuman moveMent];
            
            if ([newHuman isKindOfClass:[APCoder class]]) {
                APCoder* coder =(APCoder*) newHuman;
                NSLog(@"last name is - %@,  age is - %ld years old", coder.lastName, coder.age);
                
            }

        }
        
        if (i<=(countAnimal -1)) {
            APAnimal* newAnimal = [arrayAnimal objectAtIndex:i];
            NSLog(@"------THIS IS CLASS ANIMAL----------");
            NSLog(@"%@, %@", newAnimal.petName, newAnimal.petColor);
            [newAnimal petMethod];
        }
    }
    
    NSLog(@"******************* superman mode is ON task 14-17 ***********************");
    
    // we already got a massive with all beings: array
    
    NSLog(@"we have this - %ld amount of humans and animals. lets sort it a bit", [array count]);
    
    NSArray* arrayForSorting = [[NSArray alloc] initWithArray:array];
    
    
    arrayForSorting = [array sortedArrayUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
        if ([obj1 isKindOfClass:[APHuman class]] && [obj2 isKindOfClass:[APHuman class]]) {
            return [[(APHuman*)obj1 name] compare:[(APHuman*)obj2 name]];
        } else      if ([obj1 isKindOfClass:[APAnimal class]] && [obj2 isKindOfClass:[APAnimal class]]) {
            return [[(APAnimal*)obj1 petName] compare:[(APAnimal*)obj2 petName]];
        } else if ([obj1 isKindOfClass:[APHuman class]]) {
            return NSOrderedAscending;
        } else {
            return NSOrderedDescending;
        }
        
        }];
    
    for (int i=0; i<[arrayForSorting count] ; i++) { // i dont understand what a problem here
        
        APHuman* obj = [arrayForSorting objectAtIndex:i];
        
        if ([obj isKindOfClass:[APAnimal class]]) {
            APAnimal* animal = (APAnimal*) obj;
            NSLog(@"%@, %@", animal.petName, animal.petColor);
            [animal petMethod];
        } else {
            
            
            
            NSLog(@"I AM: %@, %.2f, %.2f, %@", obj.name, obj.height, obj.weight, obj.isMale);
            [obj moveMent];
            
            if ([obj isKindOfClass:[APCoder class]]) {
                APCoder* coder =(APCoder*) obj;
                NSLog(@"last name is - %@,  age is - %ld years old", coder.lastName, coder.age);
                
            }
        }
    }
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
