//
//  NHTProfileNicknameEditController.h
//  NearHoneyTip
//
//  Created by yunseo shin on 2015. 12. 30..
//  Copyright © 2015년 Mamamoo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomeImagePicker.h"

@interface NHTProfileNicknameEditController :UIViewController<UINavigationControllerDelegate, UITextFieldDelegate,
UIImagePickerControllerDelegate, CustomeImagePickerDelegate>

@property (weak, nonatomic) IBOutlet UILabel *outputLabel;
@property (weak, nonatomic) IBOutlet UITextField *inputText;
- (IBAction)profileEditButton:(id)sender;
- (IBAction)saveEdit:(id)sender;
- (IBAction)cancelEdit:(id)sender;
//- (IBAction)backgroundSender:(id)sender;
@end


