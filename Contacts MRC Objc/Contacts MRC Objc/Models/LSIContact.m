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
                 andPhoneNum:(int)phoneNum {
    self = [super init];
    if (self) {
        
        _name = name;
        _email = email;
        _phoneNum = phoneNum;
    }
    return self;
}

@end
