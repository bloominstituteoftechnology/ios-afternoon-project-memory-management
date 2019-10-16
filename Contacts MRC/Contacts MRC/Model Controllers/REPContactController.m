//
//  REPContactController.m
//  Contacts MRC
//
//  Created by Michael Redig on 10/16/19.
//  Copyright © 2019 Red_Egg Productions. All rights reserved.
//

#import "REPContactController.h"
#import "REPContact.h"

@interface REPContactController()

@property (retain) NSMutableArray<REPContact *> *internalContacts;

@end

@implementation REPContactController

// TODO: Make sure this is safe
- (NSArray<REPContact *> *)contacts {
	NSArray *theContacts = [[self.internalContacts copy] autorelease];
//	return [self.internalContacts copy];

	return theContacts;
}

- (instancetype)init {
	if (self = [super init]) {
		_internalContacts = [NSMutableArray array];
	}
	return self;
}

+ (REPContactController *)controller {
	return [[[REPContactController alloc] init] autorelease];
}

- (void)dealloc {
	[_internalContacts release];
	[super dealloc];
}

- (void)createContactWithName:(NSString *)name email:(NSString *)email andPhone:(NSString *)phone {
	REPContact *contact = [[REPContact alloc] initWithName:name email:email phone:phone];

	[self.internalContacts addObject:contact];
	[contact release];
}

- (void)updateContact:(REPContact *)contact withName:(NSString *)name email:(NSString *)email andPhone:(NSString *)phone {
	contact.name = name;
	contact.email = email;
	contact.phone = phone;
}

@end
