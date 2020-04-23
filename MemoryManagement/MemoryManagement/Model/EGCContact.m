//
//  EGCContact.m
//  MemoryManagement
//
//  Created by Enrique Gongora on 4/22/20.
//  Copyright © 2020 Enrique Gongora. All rights reserved.
//

#import "EGCContact.h"

@implementation EGCContact

- (instancetype)initWithName:(NSString *)name email:(NSString *)emailAddress phone:(NSString *)phoneNumber {
    if (self = [super init]) {
        _name = [name copy];
        _emailAddress = [emailAddress copy];
        _phoneNumber = [phoneNumber copy];
    }
    return self;
}

+ (instancetype)contactWithName:(NSString *)name email:(NSString *)emailAddress phone:(NSString *)phoneNumber {
    return [[[self alloc] initWithName:name email:emailAddress phone:phoneNumber] autorelease];
}

- (void)dealloc {
    [_name release];
    _name = nil;
    
    [_emailAddress release];
    _emailAddress = nil;
    
    [_phoneNumber release];
    _phoneNumber = nil;
    
    [super dealloc];
}

@end
