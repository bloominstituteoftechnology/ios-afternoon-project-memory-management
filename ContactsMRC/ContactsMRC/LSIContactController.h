//
//  LSIContactController.h
//  ContactsMRC
//
//  Created by Kelson Hartle on 7/31/20.
//  Copyright © 2020 Kelson Hartle. All rights reserved.
//

#import <Foundation/Foundation.h>

@class LSIContact;

NS_ASSUME_NONNULL_BEGIN

@interface LSIContactController : NSObject

@property (nonatomic,retain) NSArray<LSIContact *> *contacts;

-(void)addContact:(LSIContact *)contact;


@end

NS_ASSUME_NONNULL_END
