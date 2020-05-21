//
//  CBDContactController.h
//  ContactsMRC
//
//  Created by Christopher Devito on 5/20/20.
//  Copyright © 2020 Christopher Devito. All rights reserved.
//

#import <Foundation/Foundation.h>
@class CBDContact;

@interface CBDContactController : NSObject

@property(nonatomic, retain)NSMutableArray<CBDContact *> *contacts;

@end
