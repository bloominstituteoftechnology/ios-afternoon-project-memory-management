//
//  EGCContactController.m
//  MemoryManagement
//
//  Created by Enrique Gongora on 4/22/20.
//  Copyright © 2020 Enrique Gongora. All rights reserved.
//

#import "EGCContactController.h"

@interface EGCContactController ()

@property (nonatomic) NSMutableArray<EGCContact *> *internalContacts;

@end

@implementation EGCContactController

- (instancetype)init {
    self = [super init];
    if (self) {
        // use _variableName
        _internalContacts = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)addContact:(EGCContact *)aContact {
    // use self.variableName KVO Compliant
    [self.internalContacts addObject:aContact]; // +1
}


- (void)updateContact:(EGCContact *)aContact withName:(NSString *)name email:(NSString *)emailAddress phone:(NSString *)phoneNumber {
    NSUInteger index = [self.internalContacts indexOfObject:aContact];
    aContact.name = name;
    aContact.emailAddress = emailAddress;
    aContact.phoneNumber = phoneNumber;
    [self.internalContacts replaceObjectAtIndex:index withObject:aContact]; // changing data without notifying!
}

- (NSArray *)contacts {
//    return [[[NSArray alloc] initWithArray:self.internalContact] autorelease];
    return [[self.internalContacts copy] autorelease]; // copy on write
}

@end
