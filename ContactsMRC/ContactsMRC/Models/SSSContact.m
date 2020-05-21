//
//  SSSContact.m
//  ContactsMRC
//
//  Created by Shawn Gee on 5/20/20.
//  Copyright © 2020 Swift Student. All rights reserved.
//

#import "SSSContact.h"

@implementation SSSContact

- (instancetype)initWithName:(NSString *)name
                emailAddress:(NSString *)emailAddress
                 phoneNumber:(NSString *)phoneNumber {
    self = [super init];
    if (!self) { return nil; }
    
    _name = [name copy];
    _emailAddress = [emailAddress copy];
    _phoneNumber = [phoneNumber copy];
    
    return self;
}

- (void)dealloc {
    [_name release];
    [_emailAddress release];
    [_phoneNumber release];
    
    [super dealloc];
}

+ (instancetype)contactWithName:(NSString *)name
                   emailAddress:(NSString *)emailAddress
                    phoneNumber:(NSString *)phoneNumber {
    return [[[SSSContact alloc] initWithName:name emailAddress:emailAddress phoneNumber:phoneNumber] autorelease];
}

@end
