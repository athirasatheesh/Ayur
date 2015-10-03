//
//  MSPWebViewController.h
//  MyTableSample
//
//  Created by athira on 18/09/15.
//  Copyright (c) 2015 athira. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MSPConstants.h"
#import "MSPApplicationDelegate.h"

@interface MSPWebViewController : UIViewController <UIWebViewDelegate>
{
    NSString *webPageName;
}
-(void) loadUrl :(NSString*) webPageUrlName;

@property (unsafe_unretained, nonatomic) IBOutlet UIWebView *webview;

@end
