//
//  VVSContact.m
//  Memory Management
//
//  Created by Vici Shaweddy on 2/18/20.
//  Copyright © 2020 Vici Shaweddy. All rights reserved.
//

#import "VVSContact.h"

@implementation VVSContact

- (instancetype)initWithName:(NSString *)name email:(NSString *)emailAddress phone:(NSString *)phoneNumber
{
    if (self = [super init]) {
        _name = [name copy];
        _emailAddress = [emailAddress copy];
        _phoneNumber = [phoneNumber copy];
    }
    return self;
}

+ (instancetype)contactWithName:(NSString *)name email:(NSString *)emailAddress phone:(NSString *)phoneNumber
{
    return [[[VVSContact alloc] initWithName:name email:emailAddress phone:phoneNumber] autorelease];
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
