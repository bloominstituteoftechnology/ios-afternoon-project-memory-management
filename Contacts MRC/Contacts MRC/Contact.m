//
//  Contact.m
//  Contacts MRC
//
//  Created by Mark Gerrior on 5/20/20.
//  Copyright © 2020 Mark Gerrior. All rights reserved.
//

#import "Contact.h"

@implementation Contact

- (instancetype)initWithName:(NSString *)name
                       email:(NSString *)email
                       phone:(NSString *)phone {
    self = [super init];
    if (self) {
        NSLog(@"-[Contact init]: %@", name);
        _name = [name copy];
        _email = [email copy];
        _phone = [phone copy];
    }
    return self;
}

// Implement autoreleased class car method
+ (instancetype)contactWithName:(NSString *)name
                          email:(NSString *)email
                          phone:(NSString *)phone {
    return [[[Contact alloc] initWithName:name email:email phone:phone] autorelease];
}

- (void)dealloc
{
    NSLog(@"-[Contact dealloc]: %@", self);
    // Print self before releasing anything
    [_name release];
    [_email release];
    [_phone release];

    [super dealloc];
}

- (NSString *)description
{
    // TODO: Implement a standard autoreleasing method.
    NSString *description = [NSString stringWithFormat:@"Contact: %@", self.name];
//    NSString *description = [[[NSString alloc] initWithFormat:@"Contact: %@", self.name] autorelease];
    return description;
}

@end
