//
//  LSIContact.h
//  ContactsMRC
//
//  Created by Bhawnish Kumar on 6/17/20.
//  Copyright © 2020 Bhawnish Kumar. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface LSIContact : NSObject

@property (nonatomic, copy) NSString *emailAddress;
@property (nonatomic, copy) NSString *address;
@property (nonatomic, copy) NSString *telephone;

- (instancetype)initWithEmailAddress:(NSString *)emailAddress address:(NSString *)address telephone:(NSString *)telephone;

@end


