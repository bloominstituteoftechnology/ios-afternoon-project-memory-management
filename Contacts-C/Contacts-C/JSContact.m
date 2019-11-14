//
//  JSContact.m
//  Contacts-C
//
//  Created by Jeffrey Santana on 10/16/19.
//  Copyright © 2019 Lambda. All rights reserved.
//

#import "JSContact.h"

@implementation JSContact

- (instancetype)initWithName:(NSString *)name relationship:(NSString *)relationship {
	self = [super init];
	if (self) {
		_name = [name copy];
		_relationship = [relationship copy];
	}
	return self;
}

- (void)dealloc
{
	[_name release];
	[_relationship release];
	[super dealloc];
}

@end
