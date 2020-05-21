//
//  CBDContact.m
//  ContactsMRC
//
//  Created by Christopher Devito on 5/20/20.
//  Copyright © 2020 Christopher Devito. All rights reserved.
//

#import "CBDContact.h"

@implementation CBDContact

-(instancetype)initWithName:(NSString *)name
                      email:(NSString *)email
                      phone:(NSString *)phone {
    self = [super init];
    if (self) {
        NSLog(@"[Contact init]: %@", name);
        _name = [name copy];
        _email = [email copy];
        _phone = [phone copy];
    }
    return self;
}

+(instancetype)contactWithName:(NSString *)name
                         email:(NSString *)email
                         phone:(NSString *)phone {
    return [[[CBDContact alloc] initWithName:name email:email phone:phone] autorelease];
}

- (void)dealloc {
    [_name release];
    [_email release];
    [_phone release];

    [super dealloc];
}

- (void)setName:(NSString *)name {
    if (name != _name) {
        [_name release];
        _name = [name retain];
    }
}

- (void)setEmail:(NSString *)email {
    if (email != _email) {
        [_email release];
        _email = [email retain];
    }
}

- (void)setPhone:(NSString *)phone {
    if (phone != _phone) {
        [_phone release];
        _phone = [phone retain];
    }
}

@end
