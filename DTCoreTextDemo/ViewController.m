//
//  ViewController.m
//  DTCoreTextDemo
//
//  Created by 王凯彬 on 2022/11/16.
//

#import "ViewController.h"
#import <DTCoreText/DTCoreText.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    DTAttributedLabel *attributedLabel = [[DTAttributedLabel alloc] initWithFrame:CGRectMake(10, 100, 200, 50)];
    attributedLabel.numberOfLines = 0;
    [self.view addSubview:attributedLabel];
    
    NSString *html = @"<font color='#00ff00'>hellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohello<font color='#ff0000'>Some Text</font>world<font color='#0000ff'>Other Text</font></font>";
    NSData *data = [html dataUsingEncoding:NSUTF8StringEncoding];
    NSAttributedString *attrString = [[NSAttributedString alloc] initWithHTMLData:data documentAttributes:NULL];
    attributedLabel.attributedString = attrString;
    NSLog(@"%@", attrString);
}


@end
