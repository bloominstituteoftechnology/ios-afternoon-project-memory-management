//
//  JBContactsController.m
//  Contacts(MRC)
//
//  Created by Jon Bash on 2020-01-29.
//  Copyright © 2020 Jon Bash. All rights reserved.
//

#import "JBContactsController.h"
#import "JBContact.h"


// TODO: set to NO when not testing
static BOOL usingMockData = YES;


@interface JBContactsController()

@property (retain, nonatomic) NSMutableArray *privateContacts;
+ (NSArray<JBContact *> *)mockData;

@end


@implementation JBContactsController

- (instancetype)init
{
    self = [super init];
    if (self) {
        if (usingMockData) {
            _privateContacts = [JBContactsController.mockData mutableCopy];
        } else {
            _privateContacts = [[NSMutableArray alloc] init];
        }
    }
    return self;
}

+ (NSArray<JBContact *> *)mockData
{
    return [[[NSArray alloc] initWithObjects:
             [[[JBContact alloc] initWithName:@"Jon Bash"
                                 emailAddress:@"jonbash@pm.me"
                                  phoneNumber:@"5551234567"]
              autorelease],
             [[[JBContact alloc] initWithName:@"Elie Hartman"
                                 emailAddress:@"eliehazemail@realsite.com"
                                  phoneNumber:@"5559876543"]
              autorelease],
             [[[JBContact alloc] initWithName:@"Michele Bash"
                                 emailAddress:nil
                                  phoneNumber:@"5551112222"]
              autorelease],
             [[[JBContact alloc] initWithName:@"Phoneless Joe"
                                 emailAddress:@"joe@no.phone"
                                  phoneNumber:nil]
              autorelease],
             [[[JBContact alloc] initWithName:@"Skeleton Harvester"
                                 emailAddress:nil
                                  phoneNumber:nil]
              autorelease],
             nil]
            autorelease];
}

- (NSArray<JBContact *> *)contacts
{
    return [[self.privateContacts copy] autorelease];
}

- (void)addContactWithName:(NSString *)name
              emailAddress:(NSString *)emailAddress
               phoneNumber:(NSString *)phoneNumber
{
    JBContact *newContact = [[[JBContact alloc] initWithName:name
                                                emailAddress:emailAddress
                                                 phoneNumber:phoneNumber]
                             autorelease];
    [self.privateContacts addObject:newContact];
}

- (void)updateContact:(JBContact *)contact
             withName:(NSString *)name
         emailAddress:(NSString *)emailAddress
          phoneNumber:(NSString *)phoneNumber
{
    contact.name = name;
    contact.emailAddress = emailAddress;
    contact.phoneNumber = phoneNumber;
}

- (void)removeContact:(JBContact *)contact
{
    [self.privateContacts removeObject:contact];
}

- (void)dealloc
{
    [_privateContacts release];
    _privateContacts = nil;
    [super dealloc];
}
@end
