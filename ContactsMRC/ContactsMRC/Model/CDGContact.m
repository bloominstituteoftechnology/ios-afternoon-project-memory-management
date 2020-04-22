//
//  CDGContact.m
//  ContactsMRC
//
//  Created by Chris Gonzales on 4/22/20.
//  Copyright © 2020 Chris Gonzales. All rights reserved.
//

#import "CDGContact.h"

@implementation CDGContact


- (instancetype)initWithName:(NSString *)name
                emailAddress:(NSString *)emailAddress
                 phoneNumber:(NSInteger)phoneNumber {
    self = [super init];
    if (self) {
        _name = name;
        _emailAddress = emailAddress;
        _phoneNumber = phoneNumber;
    }
    return self;
}

+ (instancetype)contactWithName:(NSString *)name
                   emailAddress:(NSString *)emailAddress
                    phoneNumber:(NSInteger)phoneNumber {
    return [[[self alloc]initWithName:name
                         emailAddress:emailAddress
                          phoneNumber:phoneNumber] autorelease];
}

- (void)dealloc {
    [_name release];
    _name = nil;
    [_emailAddress release];
    _emailAddress = nil;
    
    [super dealloc];
}

@end
