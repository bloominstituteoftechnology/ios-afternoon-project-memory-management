//
//  HSIContact.m
//  MRC-project
//
//  Created by Kenny on 6/17/20.
//  Copyright © 2020 Hazy Studios. All rights reserved.
//

#import "HSIContact.h"

@implementation HSIContact

- (instancetype)initWithName:(NSString *)name emailAddress:(NSString *)email phoneNumber:(NSString *)phone
{
    {
        self = [super init];
        if (self) {
            _name = name;
            _emailAddress = email;
            _phoneNumber = phone;

        }
        return self;
    }
}

- (void)dealloc
{
    [_name release];
    [_emailAddress release];
    [_phoneNumber release];
    
    [super dealloc];
}

@end
