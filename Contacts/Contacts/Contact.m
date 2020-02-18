//
//  Contact.m
//  Contacts
//
//  Created by Bobby Keffury on 2/18/20.
//  Copyright © 2020 Bobby Keffury. All rights reserved.
//

#import "Contact.h"

@implementation Contact

- (instancetype)initWithName:(NSMutableString *)name emailAddress:(NSMutableString *)emailAddress phoneNumber:(NSMutableString *)phoneNumber
{
    self = [super init];
    if (self) {
        NSLog(@"-[Contact init]: %@, %@, %@", _name, _emailAddress, _phoneNumber);
        _name = [name retain];
        _emailAddress = [emailAddress retain];
        _phoneNumber = [phoneNumber retain];
    }
    return self;
}

- (void)dealloc
{
    NSLog(@"-[Contact init]: %@, %@, %@", _name, _emailAddress, _phoneNumber);
    
    [_name release];
    _name = nil;
    
    [_emailAddress release];
    _emailAddress = nil;
    
    [_phoneNumber release];
    _phoneNumber = nil;
    
    [super dealloc];
}

@end
