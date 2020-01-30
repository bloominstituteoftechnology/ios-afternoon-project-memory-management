//
//  LSIContact.m
//  Contacts MRC Objc
//
//  Created by macbook on 1/29/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "LSIContact.h"

@implementation LSIContact

- (instancetype)initWithName:(NSString *)name
                       email:(NSString *)email
                 andPhoneNum:(NSString *)phoneNum {
    self = [super init];
    if (self) {
        
        _name = [name retain];
        _email = email;
        _phoneNum = phoneNum;
        
        NSLog(@"Contact.init: %@", _name);
    }
    return self;
}

- (void)dealloc {
    // Implement dealloc with MRC (order is important)
    NSLog(@"Contact.dealloc: %@", _name);
    [_name release];
    [_email release];
    [_phoneNum release];
    
//    _name = nil;
    _email = nil;
    _phoneNum =nil;

    [super dealloc];
}

@end
