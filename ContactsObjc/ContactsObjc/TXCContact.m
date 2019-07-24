//
//  TXCContact.m
//  ContactsObjc
//
//  Created by Thomas Cacciatore on 7/24/19.
//  Copyright © 2019 Thomas Cacciatore. All rights reserved.
//

#import "TXCContact.h"

@implementation TXCContact

- (instancetype)initWithName:(NSString *)name email:(NSString *)email phone:(NSString *)phone {
    if (self) {
        _name = name;
        _email = email;
        _phone = phone;
    }
    return self;
}

@end
