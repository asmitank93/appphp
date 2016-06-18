//
//  SecondViewController.h
//  appphp
//
//  Created by Captain 10.11.4 on 18/06/16.
//  Copyright © 2016 Captain 10.11.4. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *user_email;
@property (weak, nonatomic) IBOutlet UITextField *user_pass;
- (IBAction)btn_login:(id)sender;



@end
