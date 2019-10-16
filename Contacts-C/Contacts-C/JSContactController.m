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

@property NSMutableArray<JSContact *> *internalContacts;

@end

@implementation JSContactController

- (instancetype)init {
	self = [super init];
	if (self) {
		_internalContacts = [[[NSMutableArray alloc] init] autorelease];
		[self addTestData];
	}
	return self;
}
- (NSArray *)contacts {
	return [[self.internalContacts copy] autorelease];
}

- (void)addTestData {
	[self.internalContacts addObject:[[[JSContact alloc] initWithName:@"Lidia Rodriguez" relationship:@"Mother"] autorelease]];
	[self.internalContacts addObject:[[[JSContact alloc] initWithName:@"Maximo Santana" relationship:@"Father"] autorelease]];
}
@end
