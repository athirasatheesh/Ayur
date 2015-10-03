//
//  MSPWebViewController.m
//  MyTableSample
//
//  Created by athira on 18/09/15.
//  Copyright (c) 2015 athira. All rights reserved.
//

#import "MSPWebViewController.h"
#import "AppDelegate.h"

@implementation MSPWebViewController
@synthesize webview;


- (id)initWithCoder:(NSCoder*)coder
{
    if ((self = [super initWithCoder:coder])) {
        
    }
    return self;
}
-(void) loadUrl :(NSString*) webPageUrlName
{
    NSString  *pageContent, *urlPath, *path;
    
    //webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
    webview.backgroundColor = [UIColor clearColor];
    webview.opaque = NO;
    //activityIndicatorView.hidden = NO;
    //[activityIndicatorView startAnimating];
    //webView.delegate = self;
    //[webView addSubview:activityIndicatorView];
    
    //Comment if needed
    path = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:webPageUrlName];
    pageContent = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:NULL];
    urlPath = [[NSBundle mainBundle] resourcePath];
    
    [webview loadHTMLString:pageContent baseURL:[NSURL fileURLWithPath:urlPath]];
    webview.scalesPageToFit = NO;
    //self.view = webView;
    //[webView release];

}
- (void)viewDidLoad
{
    self.title=@"Ayurvedic Treatments";
    AppDelegate *delegateone = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    NSString *webPageName = delegateone.webHTMLString;
    [self loadUrl:webPageName];
    
//    NSURL *url = [NSURL URLWithString:@"http://www.google.com"];
//    NSURLRequest *request = [NSURLRequest requestWithURL:url];
//    [webview loadRequest:request];
    //[self loadUrl:webPageName];
}
#pragma mark WebView
- (void)webViewDidFinishLoad:(UIWebView *)webView {
  //  [activityIndicatorView stopAnimating];
}
#pragma mark Private Methods
- (void) didSelectDone {
   // [delegate didSelectTableViewController];
}

@end
