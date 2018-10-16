//
//  ZJHomeViewController.m
//  ZJIJKPlayerDemo
//
//  Created by 邓志坚 on 2018/10/15.
//  Copyright © 2018 邓志坚. All rights reserved.
//

#import "ZJHomeViewController.h"
#import "ZJLiveCell.h"
#import "ZJLiveModel.h"
#import "ZJLiveViewController.h"

static NSString *CellKey = @"ZJLiveCell";
@interface ZJHomeViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic, strong) UITableView *mainTable;
@property (nonatomic, strong) NSMutableArray *lives;
@end

@implementation ZJHomeViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpView];
    
}


-(void)setUpView{
    self.mainTable = [[UITableView alloc]initWithFrame:CGRectMake(0, 0,kScreenWidth, kScreenHeight) style:UITableViewStylePlain];
    _mainTable.delegate = self;
    _mainTable.dataSource = self;
    _mainTable.tableFooterView = [[UIView alloc]init];
    [_mainTable registerClass:[ZJLiveCell class] forCellReuseIdentifier:CellKey];
    _mainTable.backgroundColor = [UIColor whiteColor];
    _mainTable.rowHeight = kScreenWidth+40;
    [self.view addSubview:self.mainTable];
    
    [self loadData];
}

#pragma mark - 加载网络数据
- (void)loadData {
    
    // 映客URL
    NSString *urlString = @"http://service.inke.com/api/live/simpleall?&gender=1&gps_info=116.346766%2C40.090413&loc_info=CN%2C%E5%8C%97%E4%BA%AC%E5%B8%82%2C%E5%8C%97%E4%BA%AC%E5%B8%82&is_new_user=1&lc=0000000000000053&cc=TG0001&cv=IK4.0.30_Iphone&proto=7&idfa=D7D0D5A2-3073-4A74-A726-98BE8B4E8F38&idfv=58A18E13-A21D-456D-B6D8-7499948B379D&devi=54b68af1895085419f7f8978d95d95257dd44f93&osversion=ios_10.300000&ua=iPhone6_2&imei=&imsi=&uid=450515766&sid=20XNNoa5VwMozGALfmi2xN1YCfLWvEq7aJuTHTQLu8bT88i1aNbi0&conn=wifi&mtid=391bb3520c38e0444ba0b3975f4bb1aa&mtxid=f0b42913a33c&logid=162,210&s_sg=89b4fd485d7c5ac30dc0dbf6042a06a9&s_sc=100&s_st=1493023925";
    
    // 请求数据
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript", @"text/plain", nil];
    
    __weak typeof(self) weakSelf = self;
    [manager GET:urlString parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        // 字典转模型
        weakSelf.lives = [ZJLiveModel mj_objectArrayWithKeyValuesArray:responseObject[@"lives"]];
        
        // 刷新表格
        [weakSelf.mainTable reloadData];
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"%@", error);
    }];
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.lives.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    ZJLiveCell *cell = [tableView dequeueReusableCellWithIdentifier:CellKey forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.model = self.lives[indexPath.row];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    ZJLiveViewController *live = [[ZJLiveViewController alloc]init];
    live.liveModel = self.lives[indexPath.row];
    [self.navigationController pushViewController:live animated:YES];
}

-(NSMutableArray *)lives{
    if (!_lives) {
        _lives = [NSMutableArray array];
    }
    return _lives;
}

@end
