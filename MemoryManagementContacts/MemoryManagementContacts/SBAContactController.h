//
//  SBAContactController.h
//  MemoryManagementContacts
//
//  Created by Sal B Amer on 6/10/20.
//  Copyright © 2020 Sal B Amer. All rights reserved.
//

#import <Foundation/Foundation.h>

//fwd class declaration
@class SBAContact;

NS_ASSUME_NONNULL_BEGIN

@interface SBAContactController : NSObject

@property (nonatomic, retain) NSMutableArray<SBAContact *> *contacts;

- (void)newContactWithName:(NSString *)name
                     email:(NSString *)email
                     phone:(NSString *)phone;

@end

NS_ASSUME_NONNULL_END
