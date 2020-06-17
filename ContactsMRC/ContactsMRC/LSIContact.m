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

- (void)dealloc
{
    NSLog(@"deallocated the properties %@", self);
   
    [_emailAddress release];
    [_address release];
    [_telephone release];
    
     [super dealloc];
}

@end
