//
//  IGFContacts.m
//  Contacts-MRC
//
//  Created by Ian French on 12/8/20.
//

#import "IGFContacts.h"


@interface IGFContacts()

@end


@implementation IGFContacts

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
    return [[[IGFContacts alloc] initWithName:name email:email number:number] autorelease];
}

+ (instancetype)contactWithDictionary:(NSDictionary *)dictionary {
    NSDictionary *nameDictionary = dictionary[@"name"];
    NSString *name = nameDictionary[@"first"];
    NSString *email = dictionary[@"email"];
    NSString *number = dictionary[@"phone"];
    return [[[IGFContacts alloc] initWithName:name email:email number:number] autorelease];
}


@end
