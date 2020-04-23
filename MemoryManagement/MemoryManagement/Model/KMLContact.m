//
//  KMLContact.m
//  MemoryManagement
//
//  Created by Keri Levesque on 4/22/20.
//  Copyright © 2020 Keri Levesque. All rights reserved.
//

#import "KMLContact.h"

@implementation KMLContact

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
