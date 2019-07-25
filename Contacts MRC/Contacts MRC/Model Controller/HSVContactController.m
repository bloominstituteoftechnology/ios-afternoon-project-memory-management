//
//  HSVContactController.m
//  Contacts MRC
//
//  Created by Hector Steven on 7/25/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

#import "HSVContactController.h"
#import "HSVContact.h"


@interface HSVContactController ()

@property (nonatomic, copy) NSMutableArray<HSVContact *> *internalContacts;

@end


@implementation HSVContactController

- (instancetype)init
{
	self = [super init];
	if (self) {
		_internalContacts = [[NSMutableArray alloc] init];
		[self addTestData];
	}
	return self;
}

- (NSArray *)contacts{
	return [self.internalContacts copy];
}




- (void)addTestData{
	HSVContact *hector = [[HSVContact alloc] initWithname:@"Hecotor" email:@"email@hector.com" phoneNumber:@"1-211-511-9121"];
	[self.internalContacts addObject:hector];
	
	HSVContact *john = [[HSVContact alloc] initWithname:@"John" email:@"email@John.com" phoneNumber:@"1-211-511-9121"];
	[self.internalContacts addObject:john];

	HSVContact *sam = [[HSVContact alloc] initWithname:@"Sam" email:@"email@Sam.com" phoneNumber:@"1-211-511-9121"];
	[self.internalContacts addObject:sam];

}




@end
