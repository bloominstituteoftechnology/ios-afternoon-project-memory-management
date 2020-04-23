//
//  KMLContactController.m
//  MemoryManagement
//
//  Created by Keri Levesque on 4/23/20.
//  Copyright © 2020 Keri Levesque. All rights reserved.
//

#import "KMLContactController.h"

@interface KMLContactController()

@property (nonatomic) NSMutableArray<KMLContact *> *internalContact;

@end

@implementation KMLContactController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _internalContact = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)addContact:(KMLContact *)aContact
{
    [_internalContact addObject:aContact];
}

- (void)updateContact:(KMLContact *)aContact withName:(NSString *)name email:(NSString *)emailAddress phone:(NSString *)phoneNumber
{
    NSUInteger index = [_internalContact indexOfObject:aContact];
    aContact.name = name;
    aContact.emailAddress = emailAddress;
    aContact.phoneNumber = phoneNumber;
    [_internalContact replaceObjectAtIndex:index withObject:aContact];
}

- (NSArray *)contacts {
    return [[[NSArray alloc] initWithArray:_internalContact] autorelease];
}




@end
