//
//  LSIContact.m
//  Contacts MRC
//
//  Created by Isaac Lyons on 12/18/19.
//  Copyright © 2019 Isaac Lyons. All rights reserved.
//

#import "LSIContact.h"

@implementation LSIContact

- (instancetype)initWithName:(NSString *)name phone:(NSString *)phone email:(NSString *)email {
    self = [super init];
    if (self) {
        _name = [name retain];
        _phone = [phone retain];
        _email = [email retain];
    }
    return self;
}

- (void)dealloc {
    [_name release];
    _name = nil;
    [_phone release];
    _phone = nil;
    [_email release];
    _email = nil;
    
    [super dealloc];
}

- (void)setName:(NSString *)name {
    [_name release];
    _name = [name retain];
}

- (void)setPhone:(NSString *)phone {
    [_phone release];
    _phone = [phone retain];
}

- (void)setEmail:(NSString *)email {
    [_email release];
    _email = [email retain];
}

@end
