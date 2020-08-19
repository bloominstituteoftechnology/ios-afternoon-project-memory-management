//
//  ViewController.m
//  ContactsMRC
//
//  Created by Kelson Hartle on 8/6/20.
//  Copyright © 2020 Kelson Hartle. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSString *quote = @"Your work is going to fill a large part of your life, and the only way to be truly satisfied is to do what you believe is great work. And the only way to do great work is to love what you do. If you haven't found it yet, keep looking. Don't settle. As with all matters of the heart, you'll know when you find it. - Steve Jobs";
    
    NSCharacterSet *punctuationSet = [[NSCharacterSet punctuationCharacterSet] retain];
    
    NSString *cleanQuote = [[quote componentsSeparatedByCharactersInSet:punctuationSet] componentsJoinedByString:@""];
    NSArray *words = [[cleanQuote lowercaseString] componentsSeparatedByString:@" "];
    
    NSMutableDictionary<NSString *, NSNumber *> *wordFrequency = [[NSMutableDictionary alloc] init];
    
    for (NSString *word  in words) {
            NSNumber *count = wordFrequency[word];
            if (count != nil) {
                wordFrequency[word] = [NSNumber numberWithInteger:count.integerValue + 1];
            } else {
                wordFrequency[word] = [[[NSNumber alloc] initWithInteger:1]autorelease];
            }
    }
    
    NSLog(@"Word frequency: %s", wordFrequency.description.UTF8String);
    
    [punctuationSet release];
    [wordFrequency release];
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
