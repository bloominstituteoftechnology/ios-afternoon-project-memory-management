//
//  MBMContact.m
//  ContactsMRC
//
//  Created by Michael on 3/25/20.
//  Copyright © 2020 Michael. All rights reserved.
//

#import "MBMContact.h"

@implementation MBMContact

- (instancetype)initWithName:(NSString *)name email:(NSString *)email phone:(NSString *)phone picture:(UIImage *)picture {
    self = [super init];
    if (self) {
        _name = name;
        _email = email;
        _phone = phone;
        _picture = [picture copy];
    }
    return self;
}

- (void)dealloc {
    [_name release];
    [_email release];
    [_phone release];
    [_picture release];
    [super dealloc];
}


- (void)setName:(NSString *)name {
    if (_name != name) {
        [_name release];
        _name = [name retain];
    }
}

- (void)setEmail:(NSString *)email {
    if (_email != email) {
        [_email release];
        _email = [email retain];
    }
}

- (void)setPhone:(NSString *)phone {
    if (_phone != phone) {
        [_phone release];
        _phone = [phone retain];
    }
}

- (void)setPicture:(UIImage *)picture {
    if (_picture != picture) {
        [_picture release];
        _picture = [picture retain];
    }
}


@end
