//
//  SKSContact.m
//  Contacts-MRC-Objc
//
//  Created by Lambda_School_Loaner_204 on 1/29/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "SKSContact.h"

@interface SKSContact()

@end

@implementation SKSContact

- (instancetype)initWithName:(NSString *)name email:(NSString *)email number:(NSString *)number {
    self = [super init];
    if (self) {
        _name = [name copy];
        _email = [email copy];
        _number = [number copy];
    }
    return self;
}

+ (instancetype)contactWithName:(NSString *)name email:(NSString *)email number:(NSString *)number {
    return [[[SKSContact alloc] initWithName:name email:email number:number] autorelease];
}

- (void)setName:(NSString *)name {
    if (name != _name) {
        [_name release];
        _name = [name retain];
    }
}

- (void)setEmail:(NSString *)email {
    if (email != _email) {
        [_email release];
        _email = [email retain];
    }
}

- (void)setNumber:(NSString *)number {
    if (number != _number) {
        [_number release];
        _number = [number retain];
    }
}

- (void)dealloc {
    [_name release];
    _name = nil;
    [_email release];
    _email = nil;
    [_number release];
    _number = nil;
    [super dealloc];
}

@end
