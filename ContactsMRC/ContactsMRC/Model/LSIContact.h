//
//  LSIContact.h
//  ContactsMRC
//
//  Created by Bhawnish Kumar on 6/17/20.
//  Copyright © 2020 Bhawnish Kumar. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LSIContact : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *emailAddress;
@property (nonatomic, copy) NSString *telephone;

- (instancetype)initWithName:(NSString *)name emailAddress:(NSString *)emailAddress telephone:(NSString *)telephone;

@end


