//
//  CDGContactController.m
//  ContactsMRC
//
//  Created by Chris Gonzales on 4/22/20.
//  Copyright © 2020 Chris Gonzales. All rights reserved.
//

#import "CDGContactController.h"
#import "CDGContact.h"

@implementation CDGContactController

- (instancetype)init {
    if (self) {
        _contacts = [[[NSArray alloc] initWithObjects:[
                                                       [[CDGContact alloc]initWithName:@"Chris Gonzales"
                                                                          emailAddress:@"christopher-gonzales@lambdastudents.com"
                                                                           phoneNumber:9513136966]autorelease],
                      [[[CDGContact alloc]initWithName:@"Student 2"
                                          emailAddress:@"TestEmail@company.com"
                                           phoneNumber:1234567890]autorelease],
                      nil]autorelease];
    }
    return self;
}

@end
