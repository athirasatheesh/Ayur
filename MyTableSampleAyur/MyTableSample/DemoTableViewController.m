//
//  DemoTableViewController.m
//  MyTableSample
//
//  Created by athira on 18/09/15.
//  Copyright (c) 2015 athira. All rights reserved.
//

#import "DemoTableViewController.h"
#import "MSPWebViewController.h"
#import "AppDelegate.h"

@implementation DemoTableViewController

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 20;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
//    MSPWebViewController *webViewController = [[MSPWebViewController alloc]initWithNibName:@"MSPWebViewController" bundle:nil];
//                                 
//   [self.navigationController pushViewController:webViewController animated:YES];
    
    MSPWebViewController *myVController = (MSPWebViewController *)[self.storyboard instantiateViewControllerWithIdentifier:@"sampleweb"];
  
    //NSLog(@"%f", indexPath);
    //NSLog(@"Row selected");
    NSString *UrlPath;
    switch (indexPath.row)
    {
        case 0:
            UrlPath = KSHUDGAGA_PAGE;
            break;
        case 1:
            UrlPath = DOLITA_PAGE;
            break;
        case 2:
            UrlPath = SAMUDAMSHA_PAGE;
            break;
        case 3:
            UrlPath = TRIPADAM_PAGE;
            break;
        case 4:
            UrlPath = SVANAKA_PAGE;
            break;
        case 5:
            UrlPath = DOLA_PAGE;
            break;
        case 6:
            UrlPath = STHITA_PAGE;
            break;
        case 7:
            UrlPath = AVALAMBITAKA_PAGE;
            break;
        case 8:
            UrlPath = DHENUKA_PAGE;
            break;
        case 9:
            UrlPath = HIRANA_PAGE;
            break;
        case 10:
            UrlPath = MARJARA_PAGE;
            break;
        case 11:
            UrlPath = VADAVAKA_PAGE;
            break;
        case 12:
            UrlPath = VIRSHA_PAGE;
            break;
        case 13:
            UrlPath = LILASANA_PAGE;
            break;
        case 14:
            UrlPath = BHRAMARA_PAGE;
            break;
        case 15:
            UrlPath = RATIPASHA_PAGE;
            break;
        case 16:
            UrlPath = UTHKANTA_PAGE;
            break;
        case 17:
            UrlPath = RATISUNDARA_PAGE;
            break;
        default:
            UrlPath = KSHUDGAGA_PAGE;
            break;
    }
    AppDelegate *delegateone = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    delegateone.webHTMLString =UrlPath;

    [self.navigationController pushViewController:myVController
                                         animated:YES];
    

}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
   	cellBackgroundImage = [UIImage imageNamed:ROW_BACKGROUND];
    NSString *text;
    UIImage *image;
    UITableViewCell *cell;
    UIImageView *backgroundImageView;
    cell = (UITableViewCell*)[tableView dequeueReusableCellWithIdentifier:@"any-cell"];
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"any-cell"];
    }
        switch (indexPath.row) {
            case 0:
                text = @"Thakradhara";
                image = [UIImage imageNamed:A1];
                break;
            case 1:
                text = @"Lepam";
                image = [UIImage imageNamed:A3];
                break;
            case 2:
                text = @"Abhyangam";
                image = [UIImage imageNamed:A4];
                break;
            case 3:
                text = @"Nasyam";
                image = [UIImage imageNamed:A8];
                break;
            case 4:
                text = @"Netradhara";
                image = [UIImage imageNamed:A9];
                break;
            case 5:
                text = @"Kateevasthi";
                image = [UIImage imageNamed:A7];
                break;
            case 6:
                text = @"Dhoomapanam";
                image = [UIImage imageNamed:A5];
                break;
            case 7:
                text = @"Gandhoosham";
                image = [UIImage imageNamed:A6];
                break;
            case 8:
                text = @"Netratharpanam";
                image = [UIImage imageNamed:A10];
                break;
            case 9:
                text = @"Njavarakizhi";
                image = [UIImage imageNamed:A11];
                break;
            case 10:
                text = @"Sirodhara";
                image = [UIImage imageNamed:A12];
                break;
            case 11:
                text = @"Siropichu";
                image = [UIImage imageNamed:A13];
                break;
            case 12:
                text = @"Sirovasthi";
                image = [UIImage imageNamed:A14];
                break;
            case 13:
                text = @"Snehapanam";
                image = [UIImage imageNamed:A15];
                break;
            case 14:
                text = @"Thailadhara";
                image = [UIImage imageNamed:A16];
                break;
            case 15:
                text = @"Thalapothichil";
                image = [UIImage imageNamed:A17];
                break;
            case 16:
                text = @"Vamanam";
                image = [UIImage imageNamed:A18];
                break;
            case 17:
                text = @"Vasthi";
                image = [UIImage imageNamed:A19];
                break;

            default:break;
    
        }
    
    cell.textLabel.font = [UIFont systemFontOfSize:16.0];
    cell.textLabel.textColor = [UIColor  blackColor];
    cell.textLabel.text = text;
    cell.imageView.image = image;
    
    backgroundImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
    backgroundImageView.image = cellBackgroundImage;
    cell.backgroundView = backgroundImageView;

    return cell;
}

@end
