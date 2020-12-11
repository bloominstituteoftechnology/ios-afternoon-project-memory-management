//
//  ContactController.m
//  MemoryManagement
//
//  Created by Cora Jacobson on 12/10/20.
//

#import "ContactController.h"

@implementation ContactController

+ (instancetype)sharedContactController
{
    static ContactController *contactController = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        contactController = [[self alloc] init];
    });

    return [contactController autorelease];
}

- (instancetype)initSharedInstance
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
