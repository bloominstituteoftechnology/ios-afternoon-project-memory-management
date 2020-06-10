//
//  DTWContactController.m
//  ContactsManager
//
//  Created by David Wright on 6/10/20.
//  Copyright © 2020 David Wright. All rights reserved.
//

#import "DTWContactController.h"
#import "DTWContact.h"

@interface DTWContactController ()

@property (nonatomic) NSMutableArray *internalContacts;

@end

@implementation DTWContactController

@synthesize contacts = _contacts;
- (NSArray<DTWContact *> *)contacts
{
    if (!_contacts) {
        //_contacts = [[NSArray alloc] init];
        _contacts = @[
            [[DTWContact alloc] initWithName:@"David Wright" Email:@"david.wright@email.com" PhoneNumber:@"123-456-7890"],
            [[DTWContact alloc] initWithName:@"Katie Wright" Email:@"katie.wright@email.com" PhoneNumber:@"234-789-1560"],
            [[DTWContact alloc] initWithName:@"Tim Apple" Email:@"tim.apple@email.com" PhoneNumber:@"555-1029-1560"],
        ];
    }
    return _contacts;
}

@end
