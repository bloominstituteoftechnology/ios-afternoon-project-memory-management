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

//@property (nonatomic) NSMutableArray <LSIContact *> *internalContacts;

@end

@implementation LSIContactController

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        
        _contacts = [[NSMutableArray alloc] init];
        
        [self createTestData];
    }
    return self;
}

// MARK: CRUD Methods

- (void)addNewContactWithName:(NSString *)name
                        email:(NSString *)email
                  andPhoneNum:(NSString *)phoneNum {
    
    LSIContact *contact = [[LSIContact alloc] initWithName:name email:email andPhoneNum:phoneNum];
    
    [self.contacts addObject:contact];
    
    [contact release];
}

- (void)updateContact:(LSIContact *)contact
             withName:(NSString *)name
                email:(NSString *)email
          andPhoneNum:(NSString *)phoneNum {
    
    LSIContact *newContact = [[LSIContact alloc] initWithName:name email:email andPhoneNum:phoneNum];
    
    [self.contacts replaceObjectAtIndex:contact withObject:newContact];
    
    [newContact release];
}

- (void)deleteContact:(LSIContact *)contact {
    [self.contacts removeObject:contact];
}

- (void)createTestData {
    
    [self addNewContactWithName:@"Anna" email:@"anna@gmail.com" andPhoneNum:@"0001112222"];
    
    [self addNewContactWithName:@"Jorge" email:@"jorge@gmail.com" andPhoneNum:@"3334445555"];
}


//
//// Computed Property
//- (NSArray *)contacts {
//
//    return [[self.internalContacts copy] autorelease];
//    // contacts would be an immutable copy of internalContacts
//
//}

@end
