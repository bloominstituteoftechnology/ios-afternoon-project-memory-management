//
//  JLRContact.m
//  Contacts
//
//  Created by Jesse Ruiz on 12/18/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import "JLRContact.h"

@implementation JLRContact

- (instancetype)initWithName:(NSString *)name
                       phone:(NSString *)phone
                       email:(NSString *)email {
    self = [super init];
    if (self) {
        NSLog(@"Contact.init");
        _name = [name retain];
        _phone = [phone retain];
        _email = [email retain];
    }
    return self;
}

- (instancetype)initWithFileDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        self.name = dictionary[@"name"];
        self.phone = dictionary[@"phone"];
        self.email = dictionary[@"email"];
    }
    return self;
}

- (NSDictionary *)toDictionary {
    NSDictionary *dictionary = [[[NSDictionary alloc] init] autorelease];
    [dictionary setValue:self.name forKey:@"name"];
    [dictionary setValue:self.phone forKey:@"phone"];
    [dictionary setValue:self.email forKey:@"email"];
    
    return dictionary;
}

- (void)dealloc {
    [_name release];
    [_phone release];
    [_email release];
    NSLog(@"Contact.dealloc");
    [super dealloc];
}

@end
