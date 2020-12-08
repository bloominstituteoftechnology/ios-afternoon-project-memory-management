//
//  IGFContactsController.m
//  Contacts-MRC
//
//  Created by Ian French on 12/8/20.
//

#import "IGFContactsController.h"
#import "IGFContacts.h"

@interface IGFContactsController()

@end



@implementation IGFContactsController


- (instancetype)init {
    self = [super init];
    if (self) {
        _contacts = [[NSMutableArray alloc] init];
    }
    return self;
}


-(void)addContact:(IGFContacts *)contact
{
    [self.contacts addObject:contact];
}

- (void)randomUsersContacts:(NSString *)users completion:(void (^)(NSError *_Nullable))completion
{

}
@end
