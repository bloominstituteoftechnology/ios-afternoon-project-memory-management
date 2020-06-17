//
//  MJPContactController.m
//  contacts
//
//  Created by Mark Poggi on 6/17/20.
//  Copyright © 2020 Mark Poggi. All rights reserved.
//

#import "MJPContactController.h"

@interface MJPContactController ()

@property (nonatomic) NSMutableArray *internalContacts;

@end

@implementation MJPContactController

- (instancetype) init {
    self = [super init];

    if (self) {
        _internalContacts = [[[NSMutableArray alloc] init] autorelease];

    }
    return self;
}

- (void)createContact:(MJPContact *)contact
{

}
- (void)editContact:(MJPContact *)contact
{

}

@end
