//
//  LSIContactController.h
//  ContactsMRC
//
//  Created by Bhawnish Kumar on 6/17/20.
//  Copyright © 2020 Bhawnish Kumar. All rights reserved.
//

#import <Foundation/Foundation.h>
@class LSIContact;
NS_ASSUME_NONNULL_BEGIN

@interface LSIContactController : NSObject

@property (nonatomic, readonly) NSMutableArray<LSIContact *> *contacts;

- (void)addContacts:(LSIContact *)contacts;



@end

NS_ASSUME_NONNULL_END
