//
//  LSIContactController.m
//  ContactsMRC
//
//  Created by Bhawnish Kumar on 6/17/20.
//  Copyright © 2020 Bhawnish Kumar. All rights reserved.
//

#import "LSIContactController.h"

@implementation LSIContactController

- (instancetype)init {
    self = [super init];
    if (self) {
        _contacts = [[NSMutableArray alloc] init];
    }
    return self;

}

- (void)addContacts:(LSIContact *)contacts {
    [self.contacts addObject:contacts];
}


@end
