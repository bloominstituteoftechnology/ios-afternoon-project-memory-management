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

- (void)dealloc
{
    [_name release];
    [_emailAddress release];
    [_phoneNumber release];
    
    _name = nil;
    _emailAddress = nil;
    _phoneNumber = nil;

    [super dealloc];

}

@end
