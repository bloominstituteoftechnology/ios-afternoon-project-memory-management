//
//  SSSContactController.h
//  ContactsMRC
//
//  Created by Shawn Gee on 5/21/20.
//  Copyright © 2020 Swift Student. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SSSContact;

NS_ASSUME_NONNULL_BEGIN

@interface SSSContactController : NSObject

@property (nonatomic, retain, readonly) NSArray<SSSContact *> *contacts;

-(void)addContact:(SSSContact *)contact;
-(void)removeContactAtIndex:(NSInteger)index;

@end

NS_ASSUME_NONNULL_END
