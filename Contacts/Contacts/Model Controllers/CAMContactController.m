//
//  CAMContactController.m
//  Contacts
//
//  Created by Cody Morley on 7/22/20.
//  Copyright © 2020 Cody Morley. All rights reserved.
//

#import "CAMContactController.h"
#import "CAMContact.h"

@implementation CAMContactController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _contacts = [NSMutableArray arrayWithObjects:
                     [CAMContact contactWithName: @"Dahna"
                                           email: @"dahna@lambda.com"
                                           phone: @"(202)555-5555"
                                         company: @"Lambda"],
                     [CAMContact contactWithName: @"Thomas"
                                           email:@"thomas@lambda.com"
                                           phone: @"(313)555-5555"
                                         company:@"Lambda"],
                     [CAMContact contactWithName: @"Stephanie"
                                           email:@"stephanie@lambda.com"
                                           phone: @"(405)555-5555"
                                         company: @"Lambda"],
                     [CAMContact contactWithName:@"Josh"
                                           email:@"josh@lambda.com"
                                           phone:@"(313)555-5555"
                                         company:@"Lambda"], nil];
    }
    return self;
}

- (void)createNewContactNamed:(NSString *)name
                        email:(NSString *)email
                        phone:(NSString *)phone
                      company:(NSString *)company
{
    CAMContact *newContact = [CAMContact contactWithName: name
                                                   email: email
                                                   phone: phone
                                                 company: company];
    if (newContact) {
        [self.contacts addObject: newContact];
    }
    return;
}

-(void)removeContact:(CAMContact *)contact
{
    for (CAMContact *storedContact in self.contacts) {
        if (contact == storedContact) {
            [self.contacts removeObject: storedContact];
        }
    }
}

-(void)dealloc
{
    [_contacts release];
    _contacts = nil;
    [super dealloc];
}

@end
