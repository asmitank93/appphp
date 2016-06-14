//
//  ViewController.m
//  appphp
//
//  Created by Captain 10.11.4 on 11/06/16.
//  Copyright © 2016 Captain 10.11.4. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize name,pass,email,u_id;
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   }

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btn:(id)sender
{
    NSURL *URL = [NSURL URLWithString:@"http://localhost/loginphp/insertdata.php"];
    
    NSString *st_format=[NSString stringWithFormat:@"u_nm=%@&u_email=%@&u_pass=%@&",name.text,email.text,pass.text];
    
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
    
    
   
   
    
    /*
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionUploadTask *uploadTask = [session uploadTaskWithRequest:req fromData:data completionHandler:^(NSData *data, NSURLResponse *response, NSError *error)
    {
        NSLog(@"%@",[error description]);
        NSString *str=[[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
        
        NSLog(@"%@",str);
    }];
    [uploadTask resume];*/

} 
    
@end
