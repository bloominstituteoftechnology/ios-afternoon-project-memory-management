//
//  ContactController.m
//  Contacts MRC
//
//  Created by Matthew Martindale on 8/11/20.
//  Copyright © 2020 Matthew Martindale. All rights reserved.
//

#import "ContactController.h"
#import "Contact.h"

@implementation ContactController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _contacts = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)addContact:(Contact *)contact
{
    [self.contacts addObject:contact];
}

- (void)updateContactAtIndex:(NSInteger)index withName:(NSString *)name email:(NSString *)email phone:(NSString *)phone
{
    Contact *contact = [[[Contact alloc] initWithName:name email:email phone:phone] autorelease];
    [_contacts setObject:contact atIndexedSubscript:index];
}

@end
