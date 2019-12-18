//
//  LSIContactController.h
//  Contacts MRC
//
//  Created by Isaac Lyons on 12/18/19.
//  Copyright © 2019 Isaac Lyons. All rights reserved.
//

#import <Foundation/Foundation.h>

@class LSIContact;
@interface LSIContactController : NSObject

@property (nonatomic, retain) NSMutableArray<LSIContact *> *contacts;

@end
