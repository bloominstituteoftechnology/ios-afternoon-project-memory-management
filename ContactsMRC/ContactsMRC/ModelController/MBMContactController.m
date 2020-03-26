//
//  MBMContactController.m
//  ContactsMRC
//
//  Created by Michael on 3/25/20.
//  Copyright © 2020 Michael. All rights reserved.
//

#import "MBMContactController.h"
#import "MBMContact.h"


@implementation MBMContactController

- (instancetype)init {
    self = [super init];
    if (self) {
        
        _contacts = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)createContactWithName:(NSString *)name
                        email:(NSString *)email
                        phone:(NSString *)phone
                      picture:(UIImage *)picture {
    
    MBMContact *contact = [[MBMContact alloc] initWithName:name email:email phone:phone picture:picture];
    
    [self.contacts addObject:contact];
    
    [contact release];
}

- (void)deleteContact:(MBMContact *)contact {
    [self.contacts removeObject:contact];
//    int long index = [self.contacts indexOfObject:contact];
//    [self.contacts removeObjectAtIndex:index];
}

- (void)editContactWithName:(NSString *)name
                      email:(NSString *)email
                      phone:(NSString *)phone
                    picture:(UIImage *)picture
                    contact:(MBMContact *)contact {
    
    MBMContact *editedContact = [[MBMContact alloc] initWithName:name email:email phone:phone picture:picture];
    
    int long index = [self.contacts indexOfObject:contact];
    [self.contacts replaceObjectAtIndex:index withObject:editedContact];
    [editedContact release];
}

- (void)editContact:(MBMContact *)contact {
    [self.contacts removeObject:contact];
}

- (void)dealloc {
    [_contacts release];
    [self release];
    [super dealloc];
}

@end
