//
//  CBDContact.m
//  ContactsMRC
//
//  Created by Christopher Devito on 5/20/20.
//  Copyright © 2020 Christopher Devito. All rights reserved.
//

#import "CBDContact.h"

@implementation CBDContact

- (void)dealloc {
    [_name release];
    [_email release];

    [super dealloc]; // Only in Manual Reference Counting - cannot call super when using ARC
}

@end
