//
//  CBDContact.h
//  ContactsMRC
//
//  Created by Christopher Devito on 5/20/20.
//  Copyright © 2020 Christopher Devito. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CBDContact : NSObject

@property (nonatomic, copy)NSString *name;
@property (nonatomic, copy)NSString *email;
@property (nonatomic, copy)NSString *phone;

-(instancetype)initWithName:(NSString *)name
                      email:(NSString *)email
                      phone:(NSString *)phone;

+(instancetype)contactWithName:(NSString *)name
                      email:(NSString *)email
                      phone:(NSString *)phone;

@end
