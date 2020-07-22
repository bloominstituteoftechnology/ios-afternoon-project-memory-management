//
//  EJSContactController.m
//  ContactsMemoryManagement
//
//  Created by Enzo Jimenez-Soto on 7/22/20.
//  Copyright © 2020 Enzo Jimenez-Soto. All rights reserved.
//

#import "EJSContactController.h"

@implementation EJSContactController

- (instancetype)init {
    self = [super init];
    if (self) {
        _contacts = [[NSMutableArray alloc] init];
    }
    return self;
}


-(void)addContacts:(EJSContact *)contacts {
    [self.contacts addObject:contacts];
}

@end
