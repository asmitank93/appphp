//
//  SecondViewController.m
//  appphp
//
//  Created by Captain 10.11.4 on 18/06/16.
//  Copyright © 2016 Captain 10.11.4. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController
@synthesize user_pass,user_email;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)btn_login:(id)sender
{
    NSURL *URL = [NSURL URLWithString:@"http://localhost/loginphp/logindata.php"];
    
    NSString *st_format=[NSString stringWithFormat:@"u_email=%@&u_pass=%@&",user_email.text,user_pass.text];
    
    NSMutableURLRequest *req=[[NSMutableURLRequest alloc]initWithURL:URL];
    [req setHTTPBody:[st_format dataUsingEncoding:NSUTF8StringEncoding]];
    [req setHTTPMethod:@"POST"];
    
    
    NSURLSession *session = [NSURLSession sharedSession];
    
    NSURLSessionDataTask *task = [session dataTaskWithRequest:req
                                            completionHandler:
                                  ^(NSData *data, NSURLResponse *response, NSError *error)
                                  {
                                      NSLog(@"%@",[error description]);
                                      NSString *str=[[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
                                      
                                      NSLog(@"%@",str);
                                  }];
    
    
    
    
    [task resume];
    

}
@end
