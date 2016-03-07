//
//  UIImage_SwizzleTestCase.h
//  UIImage+Autoresize
//
//  Created by kevin delord on 06/03/16.
//  Copyright © 2016 Smart Mobile Factory. All rights reserved.
//

#ifndef UIImage_SwizzleTestCase_h
#define UIImage_SwizzleTestCase_h

#import <XCTest/XCTest.h>
#import "UIImage+Autoresize.h"
#import <objc/runtime.h>

@interface UIImage_SwizzleTestCase : XCTestCase {
	CGFloat _scale;
}

@end

#endif /* UIImage_SwizzleTestCase_h */