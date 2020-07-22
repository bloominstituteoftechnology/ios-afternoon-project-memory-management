//
//  EJSContactController.h
//  ContactsMemoryManagement
//
//  Created by Enzo Jimenez-Soto on 7/22/20.
//  Copyright © 2020 Enzo Jimenez-Soto. All rights reserved.
//

#import <Foundation/Foundation.h>
@class EJSContact;
NS_ASSUME_NONNULL_BEGIN

@interface EJSContactController : NSObject

@property (nonatomic, readonly) NSMutableArray<EJSContact *> *contacts;

- (void)addContacts:(EJSContact *)contacts;

@end

NS_ASSUME_NONNULL_END
