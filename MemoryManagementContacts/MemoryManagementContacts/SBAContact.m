//
//  SBAContact.m
//  MemoryManagementContacts
//
//  Created by Sal B Amer on 6/10/20.
//  Copyright © 2020 Sal B Amer. All rights reserved.
//

#import "SBAContact.h"

@implementation SBAContact

- (instancetype)initWithName:(NSString *)aName
                       email:(NSString *)aEmail
                       phone:(NSString *)aphone
{
    if (self = [super init]) {
        _name = aName;
        _email = aEmail;
        _phone = aphone;
    }
    return self;
}

@end
