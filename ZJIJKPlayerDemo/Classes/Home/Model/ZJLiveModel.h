//
//  ZJLiveModel.h
//  ZJIJKPlayerDemo
//
//  Created by 邓志坚 on 2018/10/14.
//  Copyright © 2018 邓志坚. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZJCreator.h"
NS_ASSUME_NONNULL_BEGIN
@class ZJCreator;
@interface ZJLiveModel : NSObject

/*
 *
 "city":"绍兴市",
 "creator":Object{...},
 "end_time":0,
 "extra":Object{...},
 "group":0,
 "id":"1539531340135251",
 "image":"",
 "landscape":0,
 "like":Array[0],
 "link":0,
 "live_type":"",
 "multi":0,
 "name":"",
 "online_users":62378,
 "optimal":0,
 "other_addr":"",
 "pub_stat":1,
 "room_id":1139814767,
 "rotate":0,
 "share_addr":"https://mlive3.inke.cn/app/hot/live?uid=15666456&liveid=1539531340135251&ctime=1539531340",
 "slot":1,
 "start_time":0,
 "status":1,
 "stream_addr":"http://qqsource.rtc.inke.cn/live/1539531340135251.flv?ikDnsOp=1&ikHost=tx&ikOp=0&codecInfo=8192&ikLog=0&dpSrcG=6",
 "sub_live_type":"",
 "token":"5",
 "version":0
 */

@property (nonatomic, strong) NSString *city;
@property (nonatomic, strong) ZJCreator *creator;
@property (nonatomic, strong) NSString *id;
@property (nonatomic, strong) NSString *image;
@property (nonatomic, strong) NSString *landscape;
@property (nonatomic, strong) NSString *link;
@property (nonatomic, strong) NSString *online_users;
@property (nonatomic, strong) NSString *optimal;
@property (nonatomic, strong) NSString *share_addr;
@property (nonatomic, strong) NSString *stream_addr;
@property (nonatomic, strong) NSString *start_time;
@property (nonatomic, strong) NSString *room_id;
@property (nonatomic, strong) NSString *token;
@property (nonatomic, strong) NSString *version;
@property (nonatomic, strong) NSString *sub_live_type;
@property (nonatomic, strong) NSString *slot;
@property (nonatomic, strong) NSString *other_addr;

@end

NS_ASSUME_NONNULL_END
