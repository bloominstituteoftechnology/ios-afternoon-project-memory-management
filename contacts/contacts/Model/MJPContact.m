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
    self = [super init];
    if (self) {
        _name = [name copy];
        _emailAddress = [emailAddress copy];
        _phoneNumber = [phoneNumber copy];
    }
    return self;
}

+ (instancetype)contactWithName:(NSString *)name email:(NSString *)emailAddress phone:(NSString *)phoneNumber {
    return [[[self alloc] initWithName:name email:emailAddress phone:phoneNumber] autorelease];
}

- (void)dealloc
{
    [_name release];
    _name = nil;
    [_emailAddress release];
    _emailAddress = nil;
    [_phoneNumber release];
    _phoneNumber = nil;

    [super dealloc];
}

@end
