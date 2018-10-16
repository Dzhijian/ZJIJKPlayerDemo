//
//  ZJCreator.h
//  ZJIJKPlayerDemo
//
//  Created by 邓志坚 on 2018/10/15.
//  Copyright © 2018 邓志坚. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZJCreator : NSObject
/*
 "birth":"1993-04-05",
 "current_value":"310685",
 "description":"🌸",
 "emotion":"保密",
 "gender":0,
 "gmutex":0,
 "hometown":"重庆市",
 "id":15666456,
 "inke_verify":1,
 "level":64,
 "location":"绍兴市",
 "next_diff":"56035",
 "nick":"DJ_大花🌸",
 "portrait":"http://img2.inke.cn/MTUzMjUzOTk1MTI3OSMyNTAjanBn.jpg",
 "profession":" ",
 "rank_veri":214,
 "sex":0,
 "third_platform":"0",
 "veri_info":"脱口秀频道 巨星",
 "verified":214,
 "verified_reason":"脱口秀频道 巨星",
 */
@property (nonatomic, strong) NSString *birth;
@property (nonatomic, strong) NSString *current_value;
@property (nonatomic, strong) NSString *description;
@property (nonatomic, strong) NSString *emotion;
@property (nonatomic, strong) NSString *hometown;
@property (nonatomic, strong) NSString *id;
@property (nonatomic, strong) NSString *inke_verify;
@property (nonatomic, strong) NSString *level;
@property (nonatomic, strong) NSString *location;
@property (nonatomic, strong) NSString *next_diff;
@property (nonatomic, strong) NSString *nick;
@property (nonatomic, strong) NSString *portrait;
@property (nonatomic, strong) NSString *veri_info;
@property (nonatomic, strong) NSString *rank_veri;
@property (nonatomic, strong) NSString *verified;
@property (nonatomic, strong) NSString *verified_reason;


@end

NS_ASSUME_NONNULL_END
