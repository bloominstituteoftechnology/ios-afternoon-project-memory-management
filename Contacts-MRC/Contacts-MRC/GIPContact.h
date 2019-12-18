//
//  GIPContact.h
//  Contacts-MRC
//
//  Created by Gi Pyo Kim on 12/18/19.
//  Copyright © 2019 GIPGIP Studio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GIPContact : NSObject

@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *email;
@property (nonatomic, retain) NSString *phoneNumber;

- (instancetype)initWithName:(NSString *)name email:(NSString *)email phoneNumber:(NSString *)phoneNumber;

@end
