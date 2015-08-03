//
//  XUCoreTextHeader.h
//  XUCoreTextDemo
//
//  Created by 徐继垚 on 15/6/24.
//  Copyright (c) 2015年 徐继垚. All rights reserved.
//

#ifndef XUCoreTextDemo_XUCoreTextHeader_h
#define XUCoreTextDemo_XUCoreTextHeader_h

#ifdef DEBUG
#define debugLog(...) NSlog(__VA_ARGS__)
#define debugMethod() NSlog(@"%s", __func__)
#else
#define debugLog(...)
#define debugMethod()
#endif


#define RGB(A,B,C) [UIColor colorWithRed:A/255.0 green:B/255.0 blue:C/255.0 alpha:1.0]




#endif
