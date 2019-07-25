//
//  HSVContact.m
//  Contacts MRC
//
//  Created by Hector Steven on 7/25/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

#import "HSVContact.h"





@implementation HSVContact

- (instancetype)initWithname:(NSString *)name email:(NSString *)email phoneNumber:(NSString *)phoneNumber;
{
	self = [super init];
	if (self) {
		_name = name;
		_email = email;
		_phoneNumber = phoneNumber;
	}
	return self;
}






@end
