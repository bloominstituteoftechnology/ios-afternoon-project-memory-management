//
//  PNCContactController.m
//  Contacts-MRC
//
//  Created by Percy Ngan on 1/29/20.
//  Copyright © 2020 Lamdba School. All rights reserved.
//

#import "PNCContactController.h"
#import "PNCContact.h"

@interface PNCContactController ()

@property (retain) NSMutableArray *internalArray;

@end

@implementation PNCContactController

- (instancetype)init
{
	self = [super init];
	if (self) {
		_internalArray = [[[[NSMutableArray alloc] init] retain] autorelease];
	}
	return self;
}

- (void)addContactWithName:(NSString *)name phoneNumber:(NSString *)phoneNumber email:(NSString *)email
{
	PNCContact *newContact = [[[PNCContact alloc] initWithName:name phoneNumber:phoneNumber email:email] autorelease];
	[self.internalArray addObject:newContact];
}

- (void)updateContact: (PNCContact *)contact name:(NSString *)name phoneNumber:(NSString *)phoneNumber email:(NSString *)email
{
	NSUInteger index = [[[_internalArray indexOfObject:contact] retain] autorelease];
	PNCContact *contactToChange = [self.internalArray[index] retain];
	contactToChange.name = name;
	contactToChange.email = email;
	contactToChange.phoneNumber = phoneNumber;
	[contactToChange release];
}

- (NSArray *)contacts {
	return [[self.internalArray copy] autorelease];
}

- (void)dealloc
{
	[_internalArray release];
	_internalArray = nil;
	[_contacts release];
	[super dealloc];
}



@end
