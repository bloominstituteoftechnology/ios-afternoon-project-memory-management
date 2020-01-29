//
//  SKSContactsController.h
//  Contacts-MRC-Objc
//
//  Created by Lambda_School_Loaner_204 on 1/29/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SKSContact;

@interface SKSContactsController : NSObject

@property (nonatomic, readonly) NSMutableArray<SKSContact *> *contacts;

- (void)addContact:(SKSContact *)contact;

@end

