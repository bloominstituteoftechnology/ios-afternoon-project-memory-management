//
//  DTWContactController.h
//  ContactsManager
//
//  Created by David Wright on 6/10/20.
//  Copyright © 2020 David Wright. All rights reserved.
//

#import <Foundation/Foundation.h>

@class DTWContact;

NS_ASSUME_NONNULL_BEGIN

@interface DTWContactController : NSObject

@property (nonatomic, readonly, copy) NSArray<DTWContact *> *contacts;
@property (nonatomic, readonly) NSInteger contactCount;

- (DTWContact *)contactAtIndex:(NSInteger)index;
- (void)deleteContactAtIndex:(NSInteger)index;
- (void)createContactWithContact:(DTWContact *)contact;
- (void)createContactWithName:(NSString *)name Email:(NSString *)email PhoneNumber:(NSString *)phoneNumber;
- (void)updateContactAtIndex:(NSInteger)index WithContact:(DTWContact *)contact;
- (void)updateContactAtIndex:(NSInteger)index WithName:(NSString *)name Email:(NSString *)email PhoneNumber:(NSString *)phoneNumber;

@end

NS_ASSUME_NONNULL_END
