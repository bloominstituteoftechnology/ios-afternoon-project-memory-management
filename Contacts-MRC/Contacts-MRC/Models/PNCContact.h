//
//  PNCContact.h
//  Contacts-MRC
//
//  Created by Percy Ngan on 1/29/20.
//  Copyright © 2020 Lamdba School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface PNCContact : NSObject

@property (copy) NSString *name;
@property (copy) NSString *phoneNumber;
@property (copy) NSString *email;

- (instancetype)initWithName:(NSString *)name phoneNumber:(NSString *)phoneNumber email:(NSString *)email;

@end

NS_ASSUME_NONNULL_END
