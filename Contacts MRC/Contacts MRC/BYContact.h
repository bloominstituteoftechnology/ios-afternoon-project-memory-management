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

@property (retain) NSString *name;
@property (retain) NSString *phoneNumber;
@property (retain) NSString *email;


- (instancetype)initWithName:(NSString *)name phoneNumber:(NSString *)phoneNumber email:(NSString *)email;

@end

NS_ASSUME_NONNULL_END
