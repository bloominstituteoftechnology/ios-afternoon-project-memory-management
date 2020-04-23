//
//  Contact.m
//  Contact
//
//  Created by Nick Nguyen on 4/22/20.
//  Copyright © 2020 Nick Nguyen. All rights reserved.
//

#import "Contact.h"

@implementation Contact

- (instancetype)initWithName:(NSString *)name
                       email:(NSString *)email
                 phoneNumber: (NSString *)phoneNumber {
    self = [super init];
    if (self) {
        _name = name;
        _email = email;
        _phoneNumber = phoneNumber;
    }
    return self;
}

- (void)dealloc {
    [_name release];
    [_phoneNumber release];
    [_email release];
    
    [super dealloc];
}

@end
