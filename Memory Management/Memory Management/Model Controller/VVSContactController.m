//
//  VVSContactController.m
//  Memory Management
//
//  Created by Vici Shaweddy on 2/18/20.
//  Copyright © 2020 Vici Shaweddy. All rights reserved.
//

#import "VVSContactController.h"

@interface VVSContactController ()

@property (nonatomic) NSMutableArray<VVSContact *> *internalContact;

@end

@implementation VVSContactController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _internalContact = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)addContact:(VVSContact *)aContact
{
    [_internalContact addObject:aContact];
}

- (void)updateContact:(VVSContact *)aContact withName:(NSString *)name email:(NSString *)emailAddress phone:(NSString *)phoneNumber
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
