//
//  IGFContactsController.h
//  Contacts-MRC
//
//  Created by Ian French on 12/8/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN


@class IGFContacts;

@interface IGFContactsController : NSObject

@property (nonatomic, readonly) NSMutableArray<IGFContacts *> *contacts;

- (void)addContact:(IGFContacts *)contact;

- (void)randomUsersContacts:(NSString *)users completion:(void (^)(NSError *_Nullable))completion;

@end

NS_ASSUME_NONNULL_END
