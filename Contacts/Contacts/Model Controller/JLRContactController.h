//
//  JLRContactController.h
//  Contacts
//
//  Created by Jesse Ruiz on 12/18/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class JLRContact;

@interface JLRContactController : NSObject

@property (nonatomic, retain) NSMutableArray *contacts;

- (void)createContactWithName:(NSString *)name
                                phone:(NSString *)phone
                                email:(NSString *)email;

@end

NS_ASSUME_NONNULL_END
