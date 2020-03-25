//
//  Contact.m
//  ContactsMM
//
//  Created by Jorge Alvarez on 3/25/20.
//  Copyright © 2020 Jorge Alvarez. All rights reserved.
//

#import "Contact.h"

@implementation Contact

- (instancetype)initWithName:(NSString *)name
                       email:(NSString *)email
                       phone:(NSString *)phone {
    if (self = [super init]) {
        NSLog(@"[Contact init]: %@", name);
        _name = [name copy];
        _email = [email copy];
        _phone = [phone copy];
    }
    return self;
}

+ (instancetype)contactWithName:(NSString *)name
                          email:(NSString *)email
                          phone:(NSString *)phone {
    
    return [[[Contact alloc] initWithName:name email:email phone:phone] autorelease];
}

- (void)dealloc
{
    NSLog(@"[Contact dealloc]: %@", self);
    [_name release];
    _name = nil;
    [_email release];
    _email = nil;
    [_phone release];
    _phone = nil;
    [super dealloc];
}

- (NSString *)description
{
    NSString *description = [[[NSString alloc] initWithFormat:@"Contact: %@", self.name] autorelease];
    return description;
}

@end
