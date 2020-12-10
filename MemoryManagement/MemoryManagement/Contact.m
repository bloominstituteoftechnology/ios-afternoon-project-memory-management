//
//  Contact.m
//  MemoryManagement
//
//  Created by Cora Jacobson on 12/10/20.
//

#import "Contact.h"

@implementation Contact

+ (instancetype)contact
{
    return [self contactWithName:nil email:nil phone:nil];
}

+ (instancetype)contactWithName:(NSString *)aName email:(NSString *)anEmail phone:(NSString *)aPhone
{
    Contact *contact = [[self alloc] initWithName:aName email:anEmail phone:aPhone];
    return [contact autorelease];
}

- (instancetype)initWithName:(NSString *)aName email:(NSString *)anEmail phone:(NSString *)aPhone
{
    if (self = [super init]) {
        _name = aName.copy;
        _email = anEmail.copy;
        _phone = aPhone.copy;
    }
    return self;
}

- (void)dealloc
{
    [_name release];
    [_email release];
    [_phone release];
    [super dealloc];
}

@end
