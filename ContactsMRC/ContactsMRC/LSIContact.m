//
//  LSIContact.m
//  ContactsMRC
//
//  Created by Kelson Hartle on 7/31/20.
//  Copyright © 2020 Kelson Hartle. All rights reserved.
//

#import "LSIContact.h"

@implementation LSIContact

- (instancetype)initWithName:(NSString *)name
                 phonenumber:(NSNumber *)phoneNumber
                       email:(NSString *)email {
    self = [super init];
    if (self) {
        _name = [name copy];
        _phonenumber = [phoneNumber retain];
        _email = [email copy];
        NSLog(@"-[Contact init]: %@, %@, %@", _name, _phonenumber, _email);
    }
    return self;
}



@end
