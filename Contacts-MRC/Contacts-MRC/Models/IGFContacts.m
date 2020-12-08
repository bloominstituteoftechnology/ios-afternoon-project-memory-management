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



// Another great alternative:
- (void)setName:(NSString *)name
{
    if (name != _name) {
        [_name release];
        _name = [name retain];
    }
}




- (void)setEmail:(NSString *)email
{
    if (email != _email) {
        [_email release];
        _email = [email retain];
    }
}





- (void)setNumber:(NSString *)number
{
    if (number != _number) {
        [_number release];
        _number = [number retain];
    }
}



- (void)dealloc
{
    [_name release];
    [_email release];
    [_number release];
    [super dealloc];
}

@end
