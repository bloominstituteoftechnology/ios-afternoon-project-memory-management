//
//  MTGContact.h
//  Contacts MRC
//
//  Created by Mark Gerrior on 5/20/20.
//  Copyright © 2020 Mark Gerrior. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *email;
@property (nonatomic, copy) NSString *phone;

- (instancetype)initWithMake:(NSString *)make;

// Create an autoreleased class method to create a Car
+ (instancetype)contactWithMake:(NSString *)make;

@end
