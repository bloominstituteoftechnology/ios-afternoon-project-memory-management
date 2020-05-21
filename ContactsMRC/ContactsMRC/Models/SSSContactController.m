//
//  SSSContactController.m
//  ContactsMRC
//
//  Created by Shawn Gee on 5/21/20.
//  Copyright © 2020 Swift Student. All rights reserved.
//

#import "SSSContactController.h"

@interface SSSContactController ()

@property (nonatomic, retain, readwrite) NSArray<SSSContact *> *contacts;

@end

@implementation SSSContactController

- (instancetype)init {
    self = [super init];
    if (!self) { return nil; }
    
    _contacts = [[NSArray alloc] init];
    
    return self;
}

- (void)dealloc {
    [_contacts release];
    [super dealloc];
}

-(void)addContact:(SSSContact *)contact {
    self.contacts = [self.contacts arrayByAddingObject:contact];
}

-(void)removeContactAtIndex:(NSInteger)index {
    NSMutableArray *mutableContacts = [NSMutableArray arrayWithArray:self.contacts];
    [mutableContacts removeObjectAtIndex:index];
    self.contacts = [NSArray arrayWithArray:mutableContacts];
}

@end
