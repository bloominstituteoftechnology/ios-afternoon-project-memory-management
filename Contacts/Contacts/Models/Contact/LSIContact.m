//
//  LSIContact.m
//  Contacts
//
//  Created by James McDougall on 3/5/21.
//

#import "LSIContact.h"

@implementation LSIContact

- (instancetype)initWithName:(NSString *)name email:(NSString *)email phoneNumber:(NSNumber *)phoneNumber {
    if (self = [super init]) {
        _name = name;
        _email = email;
        _phoneNumber = phoneNumber;
    }
    return self;
}

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    NSString *name = dictionary[@"name"];
    NSString *email = dictionary[@"email"];
    NSNumber *phoneNumber = dictionary[@"phoneNumber"];
    
    LSIContact *newContact = [[LSIContact alloc] initWithName:name email:email phoneNumber:phoneNumber];
    return newContact;
}

- (NSDictionary *)returnDictionary {
    return @{
        @"name" : self.name,
        @"email": self.email,
        @"phoneNumber" : self.phoneNumber,
    };
}

@end
