//
//  NHTMyTipsController.h
//  NearHoneyTip
//
//  Created by yunseo shin on 2015. 12. 8..
//  Copyright © 2015년 Mamamoo. All rights reserved.
//

#import <UIKit/UIKit.h>
@class NHTTip;
@class NHTTipManager;

@interface NHTMyTipsController : UITableViewController<UITableViewDataSource,UITableViewDelegate,UIScrollViewDelegate>

@property (strong, nonatomic) UIRefreshControl *refreshManager;
@property (strong, nonatomic) NHTTip *selectedTip;
@property (strong, nonatomic) NHTTipManager *Q1;

@property (strong, nonatomic) IBOutlet UITableView *tableView;
- (void)refleshScrollViewDidEndDragging:(UIScrollView *)refreshManager;
- (void)getLatestTips;

//@property (strong, nonatomic) NSArray *userProfileImage;
//@property (strong, nonatomic) NSArray *StoreName;
//@property (strong, nonatomic) NSArray *tipDetails;
//@property (strong, nonatomic) NSArray *userNickname;
//@property (strong, nonatomic) NSArray *tipImage;
//@property (strong, nonatomic) NSArray *userBadge;

//@property (strong, nonatomic) NSArray *tipNewTime





@end

