//
//  Contact.m
//  Contacts MRC
//
//  Created by Karen Rodriguez on 5/17/20.
//  Copyright © 2020 Hector Ledesma. All rights reserved.
//

#import "HLOContact.h"

@implementation HLOContact

- (instancetype)initWithName:(NSString *)name email:(NSString *)email phoneNumber:(NSString *)phoneNumber {
    self = [super init];
    if (self) {
        _name = [name copy];    // name: +1
        _email = [email copy];  // email: +1
        _phoneNumber = [phoneNumber copy]; // phone: +1
    }
    return self;
}

+ (instancetype)contactWithName:(NSString *)name email:(NSString *)email phoneNumber:(NSString *)phoneNumber {
    return [[[HLOContact alloc] initWithName:name email:email phoneNumber:phoneNumber] autorelease];
}

- (void)setName:(NSString *)name {
    if (_name != name) {
        [_name dealloc];        // -1 retain on previous value
        _name = [name retain];  // +1 retain
    }
}

- (void)setEmail:(NSString *)email {
    if (_email != email) {
        [_email dealloc];        // -1 retain on previous value
        _email = [email retain];  // +1 retain
    }
}

- (void)setPhoneNumber:(NSString *)phoneNumber {
    if (_phoneNumber != phoneNumber) {
        [_phoneNumber dealloc];        // -1 retain on previous value
        _phoneNumber = [phoneNumber retain];  // +1 retain
    }
}

// MARK:- QUESTION FOR JON: Wouldn't calling dealloc when setting a new property call dealloc for all other properties?
- (void)dealloc {
    [_name release]; // name: -1
    _name = nil;
    [_email release]; // email: -1
    _email = nil;
    [_phoneNumber release]; // phoneNumber: -1
    _phoneNumber = nil;

    [super dealloc];
}
@end
