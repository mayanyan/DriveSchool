//
//  env_dev.h
//  puke
//
//  Created by Bitbao on 14-6-11.
//  Copyright (c) 2014年 Bitbao. All rights reserved.
//

#ifndef puke_env_dev_h
#define puke_env_dev_h


//##API 地址配置
//static NSString * const kAPI_BASE_URL = @"http://10.32.0.58:8888";


//开发联调地址
//static NSString * const kAPI_BASE_URL = @"http://10.63.255.22:8080";
//测试地址
static NSString * const kAPI_BASE_URL = @"http://api.pk.bitbao.net";
//企业版生产地址
//static NSString * const kAPI_BASE_URL = @"http://apibak.yundong.runnerbar.com";
//appstore版生产地址
//static NSString * const kAPI_BASE_URL = @"http://api.yundong.runnerbar.com";

//推送消息地址

//##API 地址配置
//static NSString * const kAPI_BASE_TWO_URL = @"http://10.32.0.58:8888";
//开发联调地址
//static NSString * const kAPI_BASE_TWO_URL = @"http://10.63.255.22:9080";
//测试地址
static NSString * const kAPI_BASE_TWO_URL = @"http://xg.pk.bitbao.net";
//企业版生产地址
//static NSString * const kAPI_BASE_TWO_URL = @"http://pushbak.yundong.runnerbar.com";
//appstore版生产地址
//static NSString * const kAPI_BASE_TWO_URL = @"http://push.yundong.runnerbar.com";

//新版本API

//平台账号登录
static NSString * const kAPI_USER_LOGIN = @"/yundong/yd_user/register.json";
//随便看看的账户创建
static NSString * const kAPI_USER_VISITOR = @"/yundong/yd_user/loginForVisitor.json";
//获取用户信息
static NSString * const kAPI_GET_USER = @"/yundong/yd_user/get.json";
//更新用户信息
static NSString * const kAPI_USER_UPDATE_PROFILE = @"/yundong/yd_user/update.json";

//获取Profile的用户综合信息
static NSString * const kAPI_USER_PROFILE_SUMMARY = @"yundong/pk_task/countPkTask.json";

//检查版本
static NSString * const kAPI_CHECK_VERSION = @"/yundong/pk_version/getLast.json";

//关联Push的的tokenValue与uid
static NSString * const kAPI_PUSH_REGISTER_TOKEN = @"xg_push_service/xg_push/register.json";
//去除绑定Push的tokenValue与uid
static NSString * const kAPI_PUSH_UNREGISTER_XG = @"xg_push_service/xg_push/unregister.json";



//活动发起平台
//获取首页活动列表
static NSString * const kAPI_HOME_GETDATA = @"/yundong/yd_info/getList.json";

//获取首页活动列表
static NSString * const kAPI_ACTIVITY_GETDETAIL = @"/yundong/yd_info/getActivityDetail.json";
//收藏活动
static NSString * const kAPI_ACTIVITY_LIKE = @"/yundong/yd_info/addUserFavourite.json";
//参加活动
static NSString * const kAPI_ACTIVITY_JOIN = @"/yundong/yd_info/addActivityFavouriteUserBehaviour.json";

//获取首话题详情列表
static NSString * const kAPI_TOPIC_GETDATA = @"/yundong/yd_info/getTopicDetail.json";

//喜欢话题图片
static NSString * const kAPI_TOPIC_LIKEITEM = @"/yundong/yd_info/addTopicInfoLike.json";

//消息列表
static NSString * const kAPI_GET_MY_MSG_LIST = @"/yundong/messageAll/getMessageList2.json";


//消息标记已读
static NSString * const kAPI_MESSAGE_UPDATE_READ_STATUS = @"/yundong/messageAll/updateToRead.json";

//查看是否有未读消息
static NSString * const kAPI_GET_MESSAGE_COUNT_NOREAD = @"/yundong/messageAll/countNotRead.json";

//我的活动
static NSString * const kAPI_GET_MY_ACTIVITY_LIST = @"/yundong/yd_user/getUserActivityList.json";
//我的话题
static NSString * const kAPI_GET_MY_TOPIC_LIST = @"/yundong/yd_user/getUserTopicList.json";
//我的收藏
static NSString * const kAPI_GET_MY_FAV_LIST = @"/yundong/yd_user/getUserFavouriteList.json";
//话题内容图片上传
static NSString * const kAPI_TOPIC_UPLOAD = @"/yundong/yd_info/addTopicInfo.json";
//获取评论列表
static NSString * const kAPI_TOPIC_GET_COMMENT = @"/yundong/yd_info/getUserTopicInfoDetail.json";

//获取评论列表
static NSString * const kAPI_TOPIC_UPDATE_COMMENT = @"/yundong/yd_info/addTopicInfoComment.json";
//话题分享(单个照片)
static NSString * const kAPI_TOPIC_SHARE = @"/yundong/yd_share/shareUserTopicInfo.json";

//话题分享(总)
static NSString * const kAPI_TOTAL_TOPIC_SHARE = @"/yundong/yd_share/shareTopic.json";

//活动分享
static NSString * const kAPI_ACTIVITY_SHARE = @"/yundong/yd_share/shareActivityInfo.json";

//删除话题
static NSString * const kAPI_TOPIC_DELETE = @"/yundong/yd_info/delTopicInfoByUser.json";


//告诉小伙伴
static NSString * const kAPI_YD_ABOUT_SHARE = @"/yundong/yd_share/shareDownLoad.json";

//设置用户所有消息为已读
static NSString * const kAPI_UPDATE_MSGSTATUS_ALLREAD = @"/yundong/messageAll/setAllReadStatus.json";

//用户反馈
static NSString * const kAPI_ADD_FEEDBACK = @"/yundong/yd_feedback/addFeedback.json";

#endif
