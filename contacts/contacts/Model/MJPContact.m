//
//  MJPContact.m
//  contacts
//
//  Created by Mark Poggi on 6/17/20.
//  Copyright © 2020 Mark Poggi. All rights reserved.
//

#import "MJPContact.h"

@implementation MJPContact

- (instancetype)initWithName:(NSString *)name email:(NSString *)emailAddress phone:(NSString *)phoneNumber
{
    if (self) {
        _name = name;
        _emailAddress = emailAddress;
        _phoneNumber = phoneNumber;
    }
    return self;
}

@end
