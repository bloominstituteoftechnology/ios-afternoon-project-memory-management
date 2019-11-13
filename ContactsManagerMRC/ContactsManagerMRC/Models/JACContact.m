//
//  JACContact.m
//  ContactsManagerMRC
//
//  Created by Jordan Christensen on 11/14/19.
//  Copyright © 2019 Mazjap Co. All rights reserved.
//

#import "JACContact.h"

@implementation JACContact
- (instancetype)initWithName:(NSString *)name nickname:(nullable NSString *)nickname email:(NSString *)email phoneNumber:(NSString *)phoneNumber {
    if (self = [super init]) {
        _name = [name retain];
        _phoneNumber = [phoneNumber retain];
        _email = [email retain];
        _nickname = [nickname retain];
        
        NSLog(@"Contact.init");
    }
    return self;
}

- (void)dealloc {
    [_name release];
    [_nickname release];
    [_email release];
    [_phoneNumber release];
    
    NSLog(@"Contact.dealloc");
    [super dealloc];
}

@end
