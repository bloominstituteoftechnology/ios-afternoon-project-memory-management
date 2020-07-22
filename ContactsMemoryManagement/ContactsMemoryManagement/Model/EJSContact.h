//
//  EJSContacts.h
//  ContactsMemoryManagement
//
//  Created by Enzo Jimenez-Soto on 7/22/20.
//  Copyright © 2020 Enzo Jimenez-Soto. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface EJSContact : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *emailAddress;
@property (nonatomic, copy) NSString *telephone;


- (instancetype)initWithName:(NSString *)name
                emailAddress:(NSString *)emailAddress
                   telephone:(NSString *)telephone;


@end


