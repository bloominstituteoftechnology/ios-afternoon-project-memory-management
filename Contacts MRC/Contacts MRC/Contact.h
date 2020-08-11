//
//  Contact.h
//  Contacts MRC
//
//  Created by Sean Acres on 8/11/20.
//  Copyright © 2020 Sean Acres. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Contact : NSObject

@property (nonatomic, copy) NSString *contactName;
@property (nonatomic, copy) NSString *emailAddress;
@property (nonatomic, copy) NSString *phoneNumber;

- (instancetype)initWithContactName:(NSString *)contactName emailAdress:(NSString *)emailAddress phoneNumber:(NSString *)phoneNumber;

@end

NS_ASSUME_NONNULL_END
