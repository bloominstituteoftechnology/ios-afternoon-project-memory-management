//
//  ContactController.h
//  contactsObjc
//
//  Created by Clayton Watkins on 10/7/20.
//

#import <Foundation/Foundation.h>

@class Contact;

NS_ASSUME_NONNULL_BEGIN

@interface ContactController : NSObject

@property (nonatomic, readonly, copy) NSArray<Contact *> *contacts;
@property (nonatomic, readonly) NSInteger contactCount;

- (instancetype)init;

- (void)createContact:(Contact *)contact;

@end

NS_ASSUME_NONNULL_END
