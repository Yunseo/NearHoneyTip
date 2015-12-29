//
//  NHTMyTipDetailController.h
//  NearHoneyTip
//
//  Created by yunseo shin on 2015. 12. 29..
//  Copyright © 2015년 Mamamoo. All rights reserved.
//

#import <UIKit/UIKit.h>
@class NHTTip;
@class NHTButtonTapPost;

@interface NHTMyTipDetailController : UIViewController

@property (strong, nonatomic) NHTTip *tip;
@property (strong, nonatomic) NHTButtonTapPost *postManager;

@property (weak, nonatomic) IBOutlet UINavigationItem *storeName;
@property (weak, nonatomic) IBOutlet UIImageView *tipImage;
@property (weak, nonatomic) IBOutlet UITextView *tipDetails;
@property (weak, nonatomic) IBOutlet UIImageView *userProfileImage;
@property (weak, nonatomic) IBOutlet UILabel *userNickname;
@property (weak, nonatomic) IBOutlet UILabel *tipDate;
@property (weak, nonatomic) IBOutlet UIImageView *userBadge;



@end
