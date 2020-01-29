//
//  JBContact.m
//  Contacts(MRC)
//
//  Created by Jon Bash on 2020-01-29.
//  Copyright © 2020 Jon Bash. All rights reserved.
//

#import "JBContact.h"

@implementation JBContact

- (instancetype)initWithName:(NSString *)name emailAddress:(NSString *)emailAddress phoneNumber:(NSString *)phoneNumber
{
    self = [super init];
    if (self) {
        _name = [name copy];
        _emailAddress = [emailAddress copy];
        _phoneNumber = [phoneNumber copy];
    }
    return self;
}

@end
