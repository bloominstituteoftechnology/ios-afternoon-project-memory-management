//
//  MainNav.m
//  MemoryManagement
//
//  Created by Lambda_School_Loaner_268 on 5/20/20.
//  Copyright © 2020 Lambda. All rights reserved.
//

#import "MainNav.h"

@interface MainNav ()
@end

@implementation MainNav

-(instancetype)init {
    self = [super init];
    if (self) {
        contacts = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
