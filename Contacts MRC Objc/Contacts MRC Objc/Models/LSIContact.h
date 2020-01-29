//
//  LSIContact.h
//  Contacts MRC Objc
//
//  Created by macbook on 1/29/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSIContact : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSString *email;
@property (nonatomic) int phoneNum;

- (instancetype)initWithName:(NSString *)name
                       email:(NSString *)email
                 andPhoneNum:(int)phoneNum;

@end

NS_ASSUME_NONNULL_END
