//
//  Contact.m
//  ContactsMRC
//
//  Created by Chad Parker on 8/11/20.
//  Copyright © 2020 Chad Parker. All rights reserved.
//

#import "Contact.h"

@implementation Contact

- (instancetype)initWithName:(NSString *)name
                       email:(NSString *)email
                       phone:(NSString *)phone
{
    if (self = [super init]) {
        _identifier = [[NSUUID alloc] init];
        _name = name;
        _email = email;
        _phone = phone;
    }
    return self;
}

- (void)dealloc
{
    [_identifier release];
    [_name release];
    [_email release];
    [_phone release];
    [super dealloc];
}

@end
