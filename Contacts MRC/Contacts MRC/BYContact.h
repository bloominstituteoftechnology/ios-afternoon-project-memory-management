//
//  BYContact.h
//  Contacts MRC
//
//  Created by Bradley Yin on 10/16/19.
//  Copyright © 2019 bradleyyin. All rights reserved.
//

#import <Foundation/Foundation.h>


NS_ASSUME_NONNULL_BEGIN



@interface BYContact : NSObject

@property (copy) NSString *name;
@property (copy) NSString *phoneNumber;
@property (copy) NSString *email;


- (instancetype)initWithName:(NSString *)name phoneNumber:(NSString *)phoneNumber email:(NSString *)email;

@end

NS_ASSUME_NONNULL_END
