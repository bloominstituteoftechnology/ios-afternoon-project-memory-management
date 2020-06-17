//
//  LSIContact.m
//  ContactsMRC
//
//  Created by Bhawnish Kumar on 6/17/20.
//  Copyright © 2020 Bhawnish Kumar. All rights reserved.
//

#import "LSIContact.h"

@implementation LSIContact


- (instancetype)initWithName:(NSString *)name
                emailAddress:(NSString *)emailAddress
                   telephone:(NSString *)telephone {
    self = [super init];
    if (self) {
        _name = [name copy];
        _emailAddress = [emailAddress copy];
        _telephone = [telephone copy];
    }
    return self;
}

- (void)dealloc
{
    NSLog(@"deallocated the properties %@", self);
   
    [ _name release];
    [ _emailAddress release];
    [ _telephone release];
    
     [super dealloc];
}

@end
