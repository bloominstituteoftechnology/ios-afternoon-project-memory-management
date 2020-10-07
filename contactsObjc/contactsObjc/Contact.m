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


@end
