//
//  MSPApplicationDelegate.h
//  MyTableSample
//
//  Created by athira on 18/09/15.
//  Copyright (c) 2015 athira. All rights reserved.
//

@protocol MSPApplicationDelegate

- (void) didSelectWebViewController:(int)row;
- (void) didSelectTableViewController;

@end