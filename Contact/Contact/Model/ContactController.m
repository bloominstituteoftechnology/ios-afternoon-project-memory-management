//
//  ContactController.m
//  Contact
//
//  Created by Nick Nguyen on 4/22/20.
//  Copyright © 2020 Nick Nguyen. All rights reserved.
//

#import "ContactController.h"
#import "Contact.h"

@implementation ContactController
- (instancetype)init
{
    self = [super init];
    if (self) {
        _contacts = [[NSMutableArray alloc] initWithObjects:
                     [[[Contact alloc] initWithName:@"Nick Nguyen" email:@"onehackway@gmail.com" phoneNumber:@"21312"]autorelease],
                     [[[Contact alloc] initWithName:@"Hello World" email:@"twohackerway@email.com" phoneNumber:@"213213"]autorelease],
                     nil];
    }
    return self;
    
    
    
}
- (void)createContact: (Contact *)contact {
    [_contacts addObject:contact ];
    
}

- (void)dealloc {
   
    [_contacts release];
    [super dealloc];
}
@end
