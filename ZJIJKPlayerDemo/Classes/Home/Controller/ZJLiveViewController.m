//
//  ZJLiveViewController.m
//  ZJIJKPlayerDemo
//
//  Created by 邓志坚 on 2018/10/15.
//  Copyright © 2018 邓志坚. All rights reserved.
//

#import "ZJLiveViewController.h"

@interface ZJLiveViewController ()

@property (nonatomic, strong) IJKFFMoviePlayerController *player;

@property (nonatomic, strong) UIImageView *placeImgV;

@end

@implementation ZJLiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setUpAllView];
    [self playLive];
}

-(void)setUpAllView{
    
    [self.view addSubview:self.placeImgV];
    
    [self.placeImgV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(0);
    }];
    
    self.placeImgV.contentMode = UIViewContentModeScaleAspectFill;
    [self.placeImgV sd_setImageWithURL:[NSURL URLWithString:_liveModel.creator.portrait]];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"返回" style:(UIBarButtonItemStylePlain) target:self action:@selector(goBack)];
    
    
    
}

#pragma mark - 播放直播
- (void)playLive {
    
    // 拉流 URL
    NSURL *liveURL = [NSURL URLWithString:_liveModel.stream_addr];
    
    IJKFFMoviePlayerController *player = [[IJKFFMoviePlayerController alloc] initWithContentURL:liveURL withOptions:nil];
    
    [self.view insertSubview:player.view aboveSubview:self.placeImgV];
    [player.view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
    _player = player;
    
    [player prepareToPlay];
    
    [player play];
}

-(void)goBack{
    [self.navigationController popViewControllerAnimated:YES];
}

-(void)dealloc{
    // 释放内存
    [_player pause];
    [_player stop];
    [_player shutdown];
}

-(UIImageView *)placeImgV{
    if (!_placeImgV) {
        _placeImgV = [[UIImageView alloc]init];
    }
    return _placeImgV;
}
@end
