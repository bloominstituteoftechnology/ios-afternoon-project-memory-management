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
    return [[[HLOContact alloc] init] autorelease];
}

@end
