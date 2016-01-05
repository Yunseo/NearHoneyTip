//
//  NHTProfileNicknameEditController.m
//  NearHoneyTip
//
//  Created by yunseo shin on 2015. 12. 30..
//  Copyright © 2015년 Mamamoo. All rights reserved.
//

#import "NHTProfileNicknameEditController.h"

@interface NHTProfileNicknameEditController ()

@end
NSString *newNickname;

@implementation NHTProfileNicknameEditController


@synthesize outputLabel, inputText;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//1) nickname edit
-(BOOL) textFieldShouldReturn:(UITextField *)textField{
    if(textField == inputText) {
        [inputText resignFirstResponder];
    }
    return NO;
}

- (IBAction)backgroundSender:(id)sender {
    
    [inputText resignFirstResponder];
    //tab gesture 로 대체
    
}

- (IBAction)profileEditButton:(id)sender {
    NSString * input=inputText.text;
    outputLabel.text=input;
    
    
}



- (void)viewDidUnLoad {
    [self setOutputLabel:nil];
    [self setInputText:nil];
    [super viewDidLoad];
    
}

- (IBAction)saveEdit:(id)sender {
}

- (IBAction)cancelEdit:(id)sender {
    NSLog(@"%@",self.navigationController.viewControllers);
    [self.navigationController popToRootViewControllerAnimated:YES];
}
@end
