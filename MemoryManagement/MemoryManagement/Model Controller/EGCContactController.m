//
//  EGCContactController.m
//  MemoryManagement
//
//  Created by Enrique Gongora on 4/22/20.
//  Copyright © 2020 Enrique Gongora. All rights reserved.
//

#import "EGCContactController.h"

@interface EGCContactController ()

@property (nonatomic) NSMutableArray<EGCContact *> *internalContact;

@end

@implementation EGCContactController

- (instancetype)init {
    self = [super init];
    if (self) {
        _internalContact = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)addContact:(EGCContact *)aContact {
    [_internalContact addObject:aContact];
}

- (void)updateContact:(EGCContact *)aContact withName:(NSString *)name email:(NSString *)emailAddress phone:(NSString *)phoneNumber {
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
