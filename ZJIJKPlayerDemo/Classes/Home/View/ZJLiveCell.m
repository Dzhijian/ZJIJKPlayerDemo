//
//  ZJLiveCell.m
//  ZJIJKPlayerDemo
//
//  Created by 邓志坚 on 2018/10/14.
//  Copyright © 2018 邓志坚. All rights reserved.
//

#import "ZJLiveCell.h"

@interface ZJLiveCell()

@property (nonatomic, strong) UIImageView *imgV;

@property (nonatomic, strong) UILabel *nameLab;


@end

@implementation ZJLiveCell


-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self setUpAllView];
    }
    
    return  self;
}

- (void)setModel:(ZJLiveModel *)model{
    _model = model;
    self.nameLab.text = model.creator.nick;
    [self.imgV sd_setImageWithURL:[NSURL URLWithString:model.creator.portrait]];
    
}
-(void)setUpAllView{
    self.imgV = [[UIImageView alloc]init];
    [self.contentView addSubview:self.imgV];
    _imgV.backgroundColor = [UIColor colorWithRed:230/255.0 green:230/255.0 blue:230/255.0 alpha:1.0];
    [_imgV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.right.mas_equalTo(0);
        make.height.equalTo(self.imgV.mas_width);
    }];
    
    self.nameLab = [[UILabel alloc]init];
    _nameLab.textColor = [UIColor blackColor];
    _nameLab.font = [UIFont systemFontOfSize:14];
    [self.contentView addSubview:self.nameLab];
    
    [_nameLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.imgV.mas_bottom);
        make.left.mas_equalTo(15);
        make.right.mas_equalTo(-15);
        make.height.mas_equalTo(40);
    }];
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
