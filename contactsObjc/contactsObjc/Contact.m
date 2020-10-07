//
//  Contact.m
//  contactsObjc
//
//  Created by Clayton Watkins on 10/7/20.
//

#import "Contact.h"

@implementation Contact

- (instancetype) initWithName:(NSString *)aName phoneNumber:(NSString *)aPhoneNumber email:(NSString *)anEmail
{
    if (self = [super init]) {
        _name = aName.copy;
        _phoneNumber = aPhoneNumber.copy;
        _email = anEmail.copy;
    }
    return self;
}

- (void)dealloc
{
    NSLog(@"-[Contact dealloc]: %@", _name);
    [_name release];
    [_phoneNumber release];
    [_email release];
    [super dealloc];
}

- (void)setName:(NSString *)name
{
    [name retain];
    [_name release];
    _name = name.copy;
}

- (void)setEmail:(NSString *)email
{
    [email retain];
    [_email release];
    _email = email.copy;
}

- (void)setPhoneNumber:(NSString *)phoneNumber
{
    [phoneNumber retain];
    [_phoneNumber release];
    _phoneNumber = phoneNumber.copy;
}


@end
