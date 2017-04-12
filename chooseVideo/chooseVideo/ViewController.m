//
//  ViewController.m
//  chooseVideo
//
//  Created by MJHee on 2017/4/12.
//  Copyright © 2017年 MJBaby. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UINavigationControllerDelegate, UIImagePickerControllerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    [self chooseVideo];
    [self startRecordVideo];
}
//选择本地视频
- (void)chooseVideo {
    UIImagePickerController *pick = [[UIImagePickerController alloc] init];
    pick.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    
    NSArray *avaliableMedia = [UIImagePickerController availableMediaTypesForSourceType:UIImagePickerControllerSourceTypeCamera];
    pick.mediaTypes = [NSArray arrayWithObject:avaliableMedia[1]];
    [self presentViewController:pick animated:YES completion:nil];
    pick.delegate = self;
}

//录制视频
- (void)startRecordVideo {
    
    UIImagePickerController *pick = [[UIImagePickerController alloc] init];
    pick.sourceType = UIImagePickerControllerSourceTypeCamera;
    
    NSArray *avaliableMedia = [UIImagePickerController availableMediaTypesForSourceType:UIImagePickerControllerSourceTypeCamera];
    pick.mediaTypes = [NSArray arrayWithObject:avaliableMedia[1]];
    [self presentViewController:pick animated:YES completion:nil];
    pick.videoMaximumDuration = 30.0f;
    pick.delegate = self;
}

@end
