//
//  CAMContactController.h
//  Contacts
//
//  Created by Cody Morley on 7/22/20.
//  Copyright © 2020 Cody Morley. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class CAMContact;

@interface CAMContactController : NSObject

@property (nonatomic, retain) NSMutableArray<CAMContact *> *contacts;

- (void)createNewContactNamed:(NSString *)name
                        email:(NSString *)email
                        phone:(NSString *)phone
                      company:(NSString *)company;


- (void)removeContact:(CAMContact *)contact;

@end

NS_ASSUME_NONNULL_END
