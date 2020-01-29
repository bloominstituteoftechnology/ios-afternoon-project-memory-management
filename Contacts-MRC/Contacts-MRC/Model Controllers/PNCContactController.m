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
		_internalArray = [NSMutableArray array];
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
	NSUInteger index = [_internalArray indexOfObject:contact];
	PNCContact *contactToChange = [self.internalArray[index] autorelease];
	contactToChange.name = name;
	contactToChange.email = email;
	contactToChange.phoneNumber = phoneNumber;
}

- (void)dealloc
{
	[_internalArray release];
	_internalArray = nil;
	[super dealloc];
}



@end
