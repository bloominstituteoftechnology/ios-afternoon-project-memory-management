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
        _name = [aName.copy retain];
        _phoneNumber = [aPhoneNumber.copy retain];
        _email = [anEmail.copy retain];
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


@end
