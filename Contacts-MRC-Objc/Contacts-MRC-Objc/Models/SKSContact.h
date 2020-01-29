//
//  SKSContact.h
//  Contacts-MRC-Objc
//
//  Created by Lambda_School_Loaner_204 on 1/29/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SKSContact : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *email;
@property (nonatomic, copy) NSString *number;

- (instancetype)initWithName:(NSString *)name email:(NSString *)email number:(NSString *)number;

+ (instancetype)contactWithName:(NSString *)name email:(NSString *)email number:(NSString *)number;

@end

