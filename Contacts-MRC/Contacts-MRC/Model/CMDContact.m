//
//  CMDContacts.m
//  Contacts-MRC
//
//  Created by Chris Dobek on 6/17/20.
//  Copyright © 2020 Chris Dobek. All rights reserved.
//

#import "CMDContact.h"

@implementation CMDContact

- (instancetype)initWithName:(NSString *)name number:(NSString *)number email:(NSString *)email {
    self = [super init];
    if (self) {
        _name = name;
        _number = number;
        _email = email;
    }
    return self;
}

+ (instancetype)contactWithName:(NSString *)name number:(NSString *)number email:(NSString *)email {
    return [[[CMDContact alloc] initWithName:name number: number email:email] autorelease];
}

+ (instancetype)contactWithDictionary:(NSDictionary *)dictionary {
    NSDictionary *nameDictionary = dictionary[@"name"];
    NSString *name = nameDictionary[@"first"];
    NSString *email = dictionary[@"email"];
    NSString *number = dictionary[@"phone"];
    return [[[CMDContact alloc] initWithName:name number:number email:email] autorelease];
}

- (void)setName:(NSString *)name {
    if (name != _name) {
        [_name release];
        _name = [name retain];
    }
}

- (void)setNumber:(NSString *)number {
    if (number != _number) {
        [_number release];
        _number = [number retain];
    }
}

- (void)setEmail:(NSString *)email {
    if (email != _email) {
        [_email release];
        _email = [email retain];
    }
}

- (void)dealloc {
    [_name release];
    _name = nil;
    [_number release];
    _number = nil;
    [_email release];
    _email = nil;
    [super dealloc];
}

@end
