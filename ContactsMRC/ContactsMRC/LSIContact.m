//
//  LSIContact.m
//  ContactsMRC
//
//  Created by Bhawnish Kumar on 6/17/20.
//  Copyright © 2020 Bhawnish Kumar. All rights reserved.
//

#import "LSIContact.h"

@implementation LSIContact


- (instancetype)initWithEmailAddress:(NSString *)emailAddress address:(NSString *)address telephone:(NSString *)telephone {
    self = [super init];
    if (self) {
        _emailAddress = [emailAddress copy];
        _address = [address copy];
        _telephone = [telephone copy];
    }
    return self;
}

@end
