//
//  ContactController.h
//  Contacts MRC
//
//  Created by Karen Rodriguez on 5/17/20.
//  Copyright © 2020 Hector Ledesma. All rights reserved.
//

#import <Foundation/Foundation.h>

@class HLOContact;
@interface HLOContactController : NSObject

@property (nonatomic, readonly) NSMutableArray<HLOContact *> *contacts;

@end
