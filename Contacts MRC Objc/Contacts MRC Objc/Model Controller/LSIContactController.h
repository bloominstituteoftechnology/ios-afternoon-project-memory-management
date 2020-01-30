//
//  LSIContactController.h
//  Contacts MRC Objc
//
//  Created by macbook on 1/29/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

@class LSIContact;

NS_ASSUME_NONNULL_BEGIN

@interface LSIContactController : NSObject

@property (nonatomic) NSMutableArray <LSIContact *> *contacts;

- (void)addNewContactWithName:(NSString *)name
                        email:(NSString *)email
                  andPhoneNum:(NSString *)phoneNum;

- (void)updateContact:(LSIContact *)contact
             withName:(NSString *)name
                email:(NSString *)email
          andPhoneNum:(NSString *)phoneNum;

- (void)deleteContact:(LSIContact *)contact;

@end

NS_ASSUME_NONNULL_END
