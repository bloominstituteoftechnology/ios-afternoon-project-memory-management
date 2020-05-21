//
//  MSKArtist.h
//  FavoriteArtists
//
//  Created by Lambda_School_Loaner_268 on 5/16/20.
//  Copyright © 2020 Lambda. All rights reserved.
//
#import <Foundation/Foundation.h>
NS_ASSUME_NONNULL_BEGIN


@interface MSKContact: NSObject
@property (nonatomic, readwrite, retain) NSString *contactName;
@property (nonatomic, nullable, readwrite, retain) NSString *contactEmail;
@property (nonatomic,nullable, readwrite, retain) NSString *contactPhone;

- (instancetype)initWithName:(NSString *)contactName
                 contactEmail:(NSString *)contactEmail
                contactPhone:(NSString *)contactPhone;
@end
NS_ASSUME_NONNULL_END
