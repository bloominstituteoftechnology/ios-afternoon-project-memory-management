//
//  CDBContactController.h
//  ContactsMRC
//
//  Created by Ciara Beitel on 11/13/19.
//  Copyright © 2019 Ciara Beitel. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class CDBContact;

@interface CDBContactController : NSObject

@property (nonatomic, retain) NSMutableArray *contacts;

- (void)addContactWithName:(NSString *)name withEmail:(NSString *)email withPhoneNumber:(NSString *)phoneNumber;

@end

NS_ASSUME_NONNULL_END
