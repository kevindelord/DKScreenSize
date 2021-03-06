//
//  UIImage_MainBundleTests.m
//  UIImage+Autoresize
//
//  Created by kevin delord on 27/04/16.
//  Copyright © 2016 Smart Mobile Factory. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface UIImageView (DynamicAutoresizeTests)

- (void)setDynamicImageName:(NSString * _Nonnull)dynamicImageName;
- (void)setDynamicImageName:(NSString * _Nonnull)dynamicImageName inBundle:(NSBundle * _Nullable)bundle compatibleWithTraitCollection:(UITraitCollection * _Nullable)traitCollection;
- (NSString * _Nullable)dynamicImageName;

@end


@interface UIImageView_DynamicImageName : XCTestCase

@end

@implementation UIImageView_DynamicImageName

- (void)testShouldNotSetImageFromMainBundle {
	UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
	XCTAssertNotNil(imgView);
	XCTAssertNil(imgView.image);
	[imgView setDynamicImageName:@"ressourcebg.png"];
	XCTAssertNil(imgView.image);
	XCTAssertNil(imgView.image.accessibilityIdentifier);
}

- (void)testShouldUpdateImageView {
	UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
	XCTAssertNotNil(imgView);
	XCTAssertNil(imgView.image);
	[imgView setDynamicImageName:@"test.bg.png" inBundle:[NSBundle bundleForClass:[self class]] compatibleWithTraitCollection:nil];
	XCTAssertNotNil(imgView.image);
	XCTAssertNotNil(imgView.image.accessibilityIdentifier);
	XCTAssertEqual(imgView.image.accessibilityIdentifier, imgView.dynamicImageName);
}


@end
