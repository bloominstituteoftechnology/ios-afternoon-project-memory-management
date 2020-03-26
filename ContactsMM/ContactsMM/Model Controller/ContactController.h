//
//  ContactController.h
//  ContactsMM
//
//  Created by Jorge Alvarez on 3/25/20.
//  Copyright © 2020 Jorge Alvarez. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Contact;

NS_ASSUME_NONNULL_BEGIN

@interface ContactController : NSObject

// MARK: - Properties

@property (nonatomic, readonly) NSArray *contacts;

- (void)addContactWithName:(NSString *)name
                     email:(NSString *)email
                     phone:(NSString *)phone;

@end

NS_ASSUME_NONNULL_END
