//
//  CDBContact.m
//  ContactsMRC
//
//  Created by Ciara Beitel on 11/13/19.
//  Copyright © 2019 Ciara Beitel. All rights reserved.
//

#import "CDBContact.h"

@implementation CDBContact

- (instancetype)initWithName:(NSString *)name withEmail:(NSString *)email withPhoneNumber:(NSString *)phoneNumber {
    if (self = [super init]) {
            _name = [name retain];
            _email = [email retain];
            _phoneNumber = [phoneNumber retain];
            NSLog(@"Contact.init");
        }
        return self;
    }

- (void)dealloc {
    [_name release];
    [_email release];
    [_phoneNumber release];
     NSLog(@"Contact.dealloc");
    [super dealloc]; // put this last
}


@end
