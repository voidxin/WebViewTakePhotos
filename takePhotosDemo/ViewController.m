//
//  ViewController.m
//  takePhotosDemo
//
//  Created by voidxin on 16/7/12.
//  Copyright © 2016年 wugumofang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic,strong)UIWebView *webView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.webView.frame=CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    [self.view addSubview:self.webView];
    [self loadLocalHTMLFile];
}
-(void)loadLocalHTMLFile{
    NSString *path=[[NSBundle mainBundle] pathForResource:@"camera" ofType:@"html"];
    NSURL *url=[NSURL fileURLWithPath:path];
    NSURLRequest *request=[NSURLRequest requestWithURL:url];
    [self.webView loadRequest:request];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIWebView *)webView{
    if (!_webView) {
        _webView=[[UIWebView alloc]init];
    }
    return _webView;
}

@end
