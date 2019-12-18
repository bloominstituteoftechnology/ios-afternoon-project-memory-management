//
//  LSIContactController.m
//  Contacts MRC
//
//  Created by Isaac Lyons on 12/18/19.
//  Copyright © 2019 Isaac Lyons. All rights reserved.
//

#import "LSIContactController.h"
#import "LSIContact.h"

@implementation LSIContactController

- (instancetype)init
{
    self = [super init];
    if (self) {
        LSIContact *isaac = [[[LSIContact alloc] initWithName:@"Isaac" phone:@"555-1234" email:@"isaac@example.com"] autorelease];
        LSIContact *gipyo = [[[LSIContact alloc] initWithName:@"Gi Pyo" phone:@"555-5678" email:@"gipyo@example.com"] autorelease];
        LSIContact *jesse = [[[LSIContact alloc] initWithName:@"Jesse" phone:@"555-9090" email:@"jesse@example.com"] autorelease];
        
        _contacts = [NSMutableArray arrayWithObjects:isaac, gipyo, jesse, nil];
    }
    return self;
}

- (void)dealloc {
    [_contacts release];
    _contacts = nil;
    
    [super dealloc];
}

@end
