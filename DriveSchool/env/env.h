


//
//  env.h
//  puke
//
//  Created by Bitbao on 14-6-11.
//  Copyright (c) 2014年 Bitbao. All rights reserved.
//

#ifndef puke_env_h
#define puke_env_h

#define env_dev
//#define env_prod

#ifdef env_dev
#import "env_dev.h"
#endif

#ifdef env_prod
#import "env_prod.h"
#endif


#endif
