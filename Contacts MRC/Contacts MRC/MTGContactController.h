//
//  MTGContactController.h
//  Contacts MRC
//
//  Created by Mark Gerrior on 5/20/20.
//  Copyright © 2020 Mark Gerrior. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Contact;

NS_ASSUME_NONNULL_BEGIN

@interface MTGContactController : NSObject


@property (nonatomic, retain) NSMutableArray<Contact *> *contacts;

- (void)delete:(NSUInteger)index;

@end

NS_ASSUME_NONNULL_END
