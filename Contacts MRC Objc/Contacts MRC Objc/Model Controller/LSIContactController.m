//
//  LSIContactController.m
//  Contacts MRC Objc
//
//  Created by macbook on 1/29/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "LSIContactController.h"
#import "LSIContact.h"

@interface LSIContactController()

@property (nonatomic) NSMutableArray <LSIContact *> *internalContacts;

@end

@implementation LSIContactController

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        
        _internalContacts = [[NSMutableArray alloc] init];
        
        // TODO: Create test data and run here
    }
    return self;
}

// MARK: CRUD Methods

- (void)addNewContactWithName:(NSString *)name
                        email:(NSString *)email
                  andPhoneNum:(int)phoneNum {
    
    LSIContact *contact = [[LSIContact alloc] initWithName:name email:email andPhoneNum:phoneNum];
    
    [self.internalContacts addObject:contact];
}

- (void)updateContact:(LSIContact *)contact
             withName:(NSString *)name
                email:(NSString *)email
          andPhoneNum:(int)phoneNum {
    
    LSIContact *newContact = [[LSIContact alloc] initWithName:name email:email andPhoneNum:phoneNum];
    
    [self.internalContacts replaceObjectAtIndex:contact withObject:newContact];
}

- (void)deleteContact:(LSIContact *)contact {
    [self.internalContacts removeObject:contact];
}



// Computed Property
- (NSArray *)contacts {
    return [self.internalContacts copy];
    // contacts would be an immutable copy of internalContacts
}

@end
