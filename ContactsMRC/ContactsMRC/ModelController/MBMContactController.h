//
//  MBMContactController.h
//  ContactsMRC
//
//  Created by Michael on 3/25/20.
//  Copyright © 2020 Michael. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class MBMContact;

NS_ASSUME_NONNULL_BEGIN

@interface MBMContactController : NSObject

@property (nonatomic, retain)NSMutableArray<MBMContact *> *contacts;

- (void)createContactWithName:(NSString *)name
                        email:(NSString *)email
                        phone:(NSString *)number
                      picture:(UIImage *)picture
                      contact:(MBMContact *)contact;

- (void)createContact:(MBMContact *)contact;

- (void)editContact:(MBMContact *)contact;

- (void)editContactWithName:(NSString *)name
                      email:(NSString *)email
                      phone:(NSString *)number
                    picture:(UIImage *)picture
                    contact:(MBMContact *)contact;

- (void)deleteContact:(MBMContact *)contact;


@end

NS_ASSUME_NONNULL_END
