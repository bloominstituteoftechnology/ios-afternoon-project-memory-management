//
//  EJSContacts.m
//  ContactsMemoryManagement
//
//  Created by Enzo Jimenez-Soto on 7/22/20.
//  Copyright © 2020 Enzo Jimenez-Soto. All rights reserved.
//

#import "EJSContact.h"

@implementation EJSContact

-(instancetype)initWithName:(NSString *)name emailAddress:(NSString *)emailAddress telephone:(NSString *)telephone
{
    self = [super init];
    if (self) {
        _name = name;
        _emailAddress = emailAddress;
        _telephone = telephone;
    }
    return self;
}

-(void)dealloc
{
    NSLog(@"deAllocated The following: %@", self);
    
    [_name release];
    [_emailAddress release];
    [_telephone release];
    
    [super dealloc];
}

@end
