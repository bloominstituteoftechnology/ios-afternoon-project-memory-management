//
//  SAHContactController.h
//  ContactsMRC
//
//  Created by scott harris on 4/22/20.
//  Copyright © 2020 scott harris. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SAHContact;

NS_ASSUME_NONNULL_BEGIN

@interface SAHContactController : NSObject

@property (nonatomic, readonly, copy) NSArray<SAHContact *> *contacts;

- (void)createContact:(SAHContact *)contact;

@end

NS_ASSUME_NONNULL_END
