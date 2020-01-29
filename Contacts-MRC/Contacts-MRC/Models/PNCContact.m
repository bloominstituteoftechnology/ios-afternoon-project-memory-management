//
//  PNCContact.m
//  Contacts-MRC
//
//  Created by Percy Ngan on 1/29/20.
//  Copyright © 2020 Lamdba School. All rights reserved.
//

#import "PNCContact.h"

@implementation PNCContact

- (instancetype)initWithName:(NSString *)name phoneNumber:(NSString *)phoneNumber email:(NSString *)email {
	if (self = [super init]) {
		_name = [name retain];
		_phoneNumber = [phoneNumber retain];
		_email = [email retain];

	}
	return self;
}

- (void)dealloc
{
	[_name release];
	//_name = nil;
	[_email release];
	//_email = nil;
	[_phoneNumber release];
	//_phoneNumber = nil;

	[super dealloc];
}

@end
