//
//  Contact.m
//  Contacts-MRC
//
//  Created by Hunter Oppel on 6/17/20.
//  Copyright © 2020 LambdaSchool. All rights reserved.
//

#import "Contact.h"

@implementation Contact

- (instancetype)initWithName:(NSString *)name email:(NSString *)email phoneNumber:(NSString *)phoneNumber
{
    self = [super init];
    if (self) {
        _name = name;
        _email = email;
        _phoneNumber = phoneNumber;
    }
    return self;
}

- (void)dealloc
{
    [_name release];
    [_email release];
    [_phoneNumber release];
    [super dealloc];
}

@end
