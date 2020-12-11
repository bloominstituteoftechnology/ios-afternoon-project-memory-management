//
//  ContactController.m
//  MemoryManagement
//
//  Created by Cora Jacobson on 12/10/20.
//

#import "ContactController.h"

@implementation ContactController

+ (instancetype)contactController
{
    ContactController *contactController = [[self alloc] init];
    return [contactController autorelease];
}

- (instancetype)init
{
    if (self = [super init]) {
        _contacts = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)dealloc
{
    [_contacts release];
    [super dealloc];
}

@end
