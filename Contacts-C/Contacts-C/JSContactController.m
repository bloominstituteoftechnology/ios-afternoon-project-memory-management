//
//  JSContactController.m
//  Contacts-C
//
//  Created by Jeffrey Santana on 10/16/19.
//  Copyright © 2019 Lambda. All rights reserved.
//

#import "JSContactController.h"
#import "JSContact.h"

@interface JSContactController ()

@property (retain) NSMutableArray<JSContact *> *internalContacts;

@end

@implementation JSContactController

- (instancetype)init {
	self = [super init];
	if (self) {
		_internalContacts = [[NSMutableArray alloc] init];
		
		[self addTestData];
	}
	return self;
}

- (void)dealloc {
	[_internalContacts release];
	[super dealloc];
}

- (NSArray *)contacts {
	return self.internalContacts;
}

- (void)addTestData {
	JSContact *testContact1 = [[[JSContact alloc] initWithName:@"Lidia Rodriguez" relationship:@"Mother"] autorelease];
	JSContact *testContact2 = [[[JSContact alloc] initWithName:@"Maximo Santana" relationship:@"Father"] autorelease];
	
	[self.internalContacts addObject:testContact1];
	[self.internalContacts addObject:testContact2];
}
@end
