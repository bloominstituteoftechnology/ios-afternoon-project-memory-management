//
//  MBMContact.h
//  ContactsMRC
//
//  Created by Michael on 3/25/20.
//  Copyright © 2020 Michael. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MBMContact : NSObject

@property (nonatomic, retain)NSString *name;
@property (nonatomic, retain)NSString *email;
@property (nonatomic, retain)NSString *phone;
@property (nonatomic, copy)UIImage * _Nullable picture;


- (instancetype)initWithName:(NSString *)name
                       email:(NSString *)email
                       phone:(NSString *)phone
                     picture:(UIImage *)picture;

- (instancetype)initWithNoPicture:(NSString *)name
                            email:(NSString *)email
                            phone:(NSString *)phone;

@end

NS_ASSUME_NONNULL_END
