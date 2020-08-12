//
//  Contact.m
//  Contacts
//
//  Created by Claudia Maciel on 8/11/20.
//  Copyright © 2020 thecoderpilot. All rights reserved.
//

#import "Contact.h"

@implementation Contact

- (instancetype)initWithFullName:(NSString *)fullName emailAddress:(NSString *)emailAddress phoneNumber:(NSString *)phoneNumber
{
    self = [super init];
    
    if (self)
    {
        _fullName = fullName;
        _emailAddress = emailAddress;
        _phoneNumber = phoneNumber;
    }
    
    return self;
}

-(void)dealloc
{
    [_fullName release];
    [_emailAddress release];
    [_phoneNumber release];
    
    [super dealloc];
}
@end
