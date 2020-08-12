//
//  Contact.h
//  ContactsMRC
//
//  Created by Chad Parker on 8/11/20.
//  Copyright © 2020 Chad Parker. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Contact : NSObject

@property (nonatomic, retain) NSUUID *identifier;
@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *email;
@property (nonatomic, retain) NSString *phone;

@end

NS_ASSUME_NONNULL_END
