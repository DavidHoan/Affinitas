//
//  AFDefines.h
//  Affinitas
//
//  Created by OnurMac on 11/10/15.
//  Copyright © 2015 Onur Unal. All rights reserved.
//

#ifndef AFDefines_h
#define AFDefines_h

// Log Managment
#define K_VERBOSE_MAIN_VIEW                          NO
#define K_VERBOSE_DETAIL_VIEW                        NO
#define K_VERBOSE_ALERT                              NO

#define K_VERBOSE_MOBILE_API_CLIENT                  NO
#define K_VERBOSE_MOBILE_API_JSON                    NO

// Color and Style Defines
#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]
#define UIColorNavbarBackground   ([UIColor colorWithRed:0.267 green:0.6 blue:0.808 alpha:1])
#define UIColorTableViewBackgound ([UIColor colorWithRed:0.878 green:0.925 blue:0.973 alpha:1])
#define UIFontSectionBigSize ([UIFont fontWithName:@"Helvetica Neue Medium" size:26.0])

// Device Setting
#define IS_OS_8_OR_LATER ([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0)
#define IS_OS_7_OR_LATER ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0)

#endif /* AFDefines_h */