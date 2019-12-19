//
//  JLRContact.m
//  Contacts
//
//  Created by Jesse Ruiz on 12/18/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import "JLRContact.h"

@implementation JLRContact

- (instancetype)initWithName:(NSString *)name
                       phone:(NSString *)phone
                       email:(NSString *)email {
    self = [super init];
    if (self) {
        NSLog(@"Contact.init");
        _name = [name retain];
        _phone = [phone retain];
        _email = [email retain];
    }
    return self;
}

- (void)dealloc {
    [_name release];
    [_phone release];
    [_email release];
    NSLog(@"Contact.dealloc");
    [super dealloc];
}

@end
