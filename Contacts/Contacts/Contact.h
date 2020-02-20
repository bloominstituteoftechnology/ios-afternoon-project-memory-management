//
//  Contact.h
//  Contacts
//
//  Created by Bobby Keffury on 2/18/20.
//  Copyright © 2020 Bobby Keffury. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Contact : NSObject

//MARK: - Properties

@property (nonatomic, retain) NSMutableString *name;
@property (nonatomic, retain) NSMutableString *emailAddress;
@property (nonatomic, retain) NSMutableString *phoneNumber;

//MARK: - Methods

- (instancetype)initWithName:(NSString *)name emailAddress:(NSString *)emailAddress phoneNumber:(NSString *)phoneNumber;

@end

NS_ASSUME_NONNULL_END
