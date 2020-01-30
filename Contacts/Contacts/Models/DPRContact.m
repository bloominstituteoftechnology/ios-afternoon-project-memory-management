//
//  DPRContact.m
//  Contacts
//
//  Created by Dennis Rudolph on 1/29/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "DPRContact.h"

@implementation DPRContact

- (instancetype)initWithName:(NSString *)name email:(NSString *)email phone:(NSString *)phone {
    self = [super init];
     if (self) {
         _name = name;
         _email = email;
         _phone = phone;
     }
     return self;
}


@end
