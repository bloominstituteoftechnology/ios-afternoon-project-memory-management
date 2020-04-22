//
//  SAHContact.m
//  ContactsMRC
//
//  Created by scott harris on 4/22/20.
//  Copyright © 2020 scott harris. All rights reserved.
//

#import "SAHContact.h"

@implementation SAHContact

- (instancetype)initWithName:(NSString *)name phone:(NSString *)phone email:(NSString *)email {
    
    self = [super init];
    if (self) {
        _name = [name copy];
        _phone = [phone copy];
        _email = [email copy];
    }
    
    return self;
}

- (void)dealloc {
    [_name release];
    [_phone release];
    [_email release];
    [super dealloc];
}

@end
