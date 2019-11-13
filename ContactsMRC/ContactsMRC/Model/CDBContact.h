//
//  CDBContact.h
//  ContactsMRC
//
//  Created by Ciara Beitel on 11/13/19.
//  Copyright © 2019 Ciara Beitel. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CDBContact : NSObject

@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *email;
@property (nonatomic, retain) NSString *phoneNumber;

- (instancetype)initWithName:(NSString *)name withEmail:(NSString *)email withPhoneNumber:(NSString *)phoneNumber;

@end

NS_ASSUME_NONNULL_END
