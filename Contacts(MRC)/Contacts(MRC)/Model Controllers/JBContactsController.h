//
//  JBContactsController.h
//  Contacts(MRC)
//
//  Created by Jon Bash on 2020-01-29.
//  Copyright © 2020 Jon Bash. All rights reserved.
//

#import <Foundation/Foundation.h>

@class JBContact;


@interface JBContactsController : NSObject

@property (nonatomic, readonly) NSArray<JBContact *> *contacts;

- (void)addContactWithName:(NSString *)name
              emailAddress:(NSString *)emailAddress
               phoneNumber:(NSString *)phoneNumber;
- (void)updateContact:(JBContact *)contact
             withName:(NSString *)name
         emailAddress:(NSString *)emailAddress
          phoneNumber:(NSString *)phoneNumber;
- (void)removeContact:(JBContact *)contact;

@end
