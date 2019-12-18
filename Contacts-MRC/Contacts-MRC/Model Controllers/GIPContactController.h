//
//  GIPContactController.h
//  Contacts-MRC
//
//  Created by Gi Pyo Kim on 12/18/19.
//  Copyright © 2019 GIPGIP Studio. All rights reserved.
//

#import <Foundation/Foundation.h>
@class GIPContact;

@interface GIPContactController : NSObject

@property (nonatomic, retain) NSArray<GIPContact *> *contacts;

- (void)addContact:(GIPContact *)contact;
- (void)updateContact:(GIPContact *)contact name:(NSString *)name email:(NSString *)email phoneNumber:(NSString *)phoneNumber;
- (void)removeContact:(GIPContact *)contact;

@end
