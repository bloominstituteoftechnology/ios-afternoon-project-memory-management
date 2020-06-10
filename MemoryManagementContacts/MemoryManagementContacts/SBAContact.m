//
//  SBAContact.m
//  MemoryManagementContacts
//
//  Created by Sal B Amer on 6/10/20.
//  Copyright © 2020 Sal B Amer. All rights reserved.
//

#import "SBAContact.h"

@implementation SBAContact

- (instancetype)initWithName:(NSString *)name
                       email:(NSString *)email
                       phone:(NSString *)phone
{
    if (self = [super init]) {
        _name = name.copy;
        _email = email.copy;
        _phone = phone.copy;
    }
    return self;
}

+ (instancetype)contactWithName:(NSString *)name
                          email:(NSString *)email
                          phone:(NSString *)phone
{
    return [[[SBAContact alloc] initWithName:name email:email phone:phone] autorelease];
}

@end
