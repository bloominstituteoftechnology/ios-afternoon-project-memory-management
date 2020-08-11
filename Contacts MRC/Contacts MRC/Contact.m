//
//  Contact.m
//  Contacts MRC
//
//  Created by Sean Acres on 8/11/20.
//  Copyright © 2020 Sean Acres. All rights reserved.
//

#import "Contact.h"

@implementation Contact

- (instancetype)initWithContactName:(NSString *)contactName
                        emailAdress:(NSString *)emailAddress
                        phoneNumber:(NSString *)phoneNumber
{
    if (self = [super init]) {
        _contactName = contactName.copy;
        _emailAddress = emailAddress.copy;
        _phoneNumber = phoneNumber.copy;
    }
    return self;
}

- (void)dealloc
{
    [_contactName release];
    [_emailAddress release];
    [_phoneNumber release];
    [super dealloc];
}

@end
