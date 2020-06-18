//
//  ContactDetailViewController.h
//  Contacts-MRC
//
//  Created by Hunter Oppel on 6/17/20.
//  Copyright © 2020 LambdaSchool. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Contact;

NS_ASSUME_NONNULL_BEGIN

@protocol ContactDetailDelegate <NSObject>

- (void)didChangeContactsWithContact:(Contact *)contact oldContact:(Contact * _Nullable)oldContact;

@end

@interface ContactDetailViewController : UIViewController

@property (retain, nonatomic) Contact *contact;
@property (retain, nonatomic) id <ContactDetailDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
