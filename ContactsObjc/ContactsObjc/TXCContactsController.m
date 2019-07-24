//
//  TXCContactsController.m
//  ContactsObjc
//
//  Created by Thomas Cacciatore on 7/24/19.
//  Copyright © 2019 Thomas Cacciatore. All rights reserved.
//

#import "TXCContactsController.h"
#import "TXCContact.h"

@implementation TXCContactsController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _contacts = @[
                      [[TXCContact alloc] initWithName:@"Tom" email:@"Tom123@fakeemail.com" phone:@"555-5555"],
                      [[TXCContact alloc] initWithName:@"Maria" email:@"Maria456@fakeemail.com" phone:@"555-7777"]
                      ];
    }
    return self;
}
@end
