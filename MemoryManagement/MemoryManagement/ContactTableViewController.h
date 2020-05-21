//
//  ContactTableViewController.h
//  MemoryManagement
//
//  Created by Lambda_School_Loaner_268 on 5/20/20.
//  Copyright © 2020 Lambda. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MSKContact.h"


NS_ASSUME_NONNULL_BEGIN



@interface ContactTableViewController : UITableViewController 
   
@property (nonatomic, retain) MSKContact *contact;

@end

NS_ASSUME_NONNULL_END
