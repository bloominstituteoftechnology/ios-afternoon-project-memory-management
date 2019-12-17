//
//  REPContact.m
//  Contacts MRC
//
//  Created by Michael Redig on 10/16/19.
//  Copyright © 2019 Red_Egg Productions. All rights reserved.
//

#import "REPContact.h"

@implementation REPContact

+ (REPContact *)contactWithName:(NSString *)name email:(NSString *)email phone:(NSString *)phone {
	return [[[REPContact alloc] initWithName:name email:email phone:phone] autorelease];
}

- (instancetype)initWithName:(NSString *)name email:(NSString *)email phone:(NSString *)phone {
	if (self = [super init]) {
		_name = name;
		_email = email;
		_phone = phone;
	}
	return self;
}

- (void)dealloc {
	[_name release];
	[_email release];
	[_phone release];
	[super dealloc];
}

@end
