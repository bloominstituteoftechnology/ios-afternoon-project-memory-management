//
//  Contact.m
//  Contacts Memory Management
//
//  Created by Dillon P on 5/3/20.
//  Copyright © 2020 Dillon's Lambda Team. All rights reserved.
//

#import "Contact.h"

@implementation Contact

- (instancetype)initWithName:(NSString *)name phoneNumber:(NSString *)phoneNumber email:(NSString *)email
{
    if (self = [super init]) {
        self.name = name;
        self.phoneNumber = phoneNumber;
        self.email = email;
    }
    return self;
}

@end
