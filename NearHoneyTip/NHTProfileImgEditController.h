//
//  NHTProfileImgEditController.h
//  NearHoneyTip
//
//  Created by yunseo shin on 2015. 12. 30..
//  Copyright © 2015년 Mamamoo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomeImagePicker.h"

@interface NHTProfileImgEditController : UIViewController<UINavigationControllerDelegate,
UIImagePickerControllerDelegate, CustomeImagePickerDelegate>



@property (weak, nonatomic) IBOutlet UIImageView *editedProfileImage;

@property (weak, nonatomic) IBOutlet UIImageView *imgView;

@property (strong, nonatomic) UIImage *chosenImg;

- (IBAction)cancelEdit:(id)sender;
- (IBAction)saveEdit:(id)sender;

- (void) connection:(NSURLConnection *) connection didReceiveResponse:(nonnull NSURLResponse *)response2;

@end



