//
//  MSKArtist.m
//  FavoriteArtists
//
//  Created by Lambda_School_Loaner_268 on 5/16/20.
//  Copyright © 2020 Lambda. All rights reserved.
//

#import "MSKContact.h"
#import "MainNav.h"

@implementation MSKContact: NSObject
- (instancetype)initWithName:(NSString *)contactName
                 contactEmail:(NSString *)contactEmail
                contactPhone:(NSString *)contactPhone {
    self = [super init];
    if (self) {
        _contactName = [contactName copy];
        _contactEmail = [contactEmail copy];
        _contactPhone = [contactPhone copy];
    }
    return self;
}
+ (instancetype)contactWithnContactName:(NSString *)contactName contactEmail:(NSString *)contactEmail contactPhone:(NSString *)contactPhone {
        return [[[MSKContact alloc] initWithName:contactName
                                    contactEmail:contactEmail
                                    contactPhone:contactPhone]
                autorelease];
    }
-(void) dealloc {
    // TODO: Implement dealloc with MRC (order is important)
    [_contactName release];
    [_contactEmail release];
    [_contactPhone release];
    [super dealloc];
}
@end
