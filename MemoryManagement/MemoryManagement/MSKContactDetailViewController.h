//
//  MSKContactDetailViewController.h
//  MemoryManagement
//
//  Created by Lambda_School_Loaner_268 on 5/20/20.
//  Copyright © 2020 Lambda. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MSKContact.h"


NS_ASSUME_NONNULL_BEGIN

@interface MSKContactDetailViewController : UIViewController
@property (nonatomic, retain) MSKContact *contact;

@property (retain, nonatomic) IBOutlet UITextField *nameTF;
@property (retain, nonatomic) IBOutlet UITextField *phoneTf;
@property (retain, nonatomic) IBOutlet UITextField *emailTF;


@end

NS_ASSUME_NONNULL_END
