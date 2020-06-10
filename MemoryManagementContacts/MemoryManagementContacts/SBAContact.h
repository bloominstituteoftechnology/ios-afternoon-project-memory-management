//
//  SBAContact.h
//  MemoryManagementContacts
//
//  Created by Sal B Amer on 6/10/20.
//  Copyright © 2020 Sal B Amer. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SBAContact : NSObject

//create properties for model
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *email;
@property (nonatomic, copy) NSString *phone;


//add initializer
- (instancetype)initWithName:(NSString *)name
                       email:(NSString *)email
                       phone:(NSString *)phone;


@end

NS_ASSUME_NONNULL_END
