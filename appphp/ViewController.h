//
//  ViewController.h
//  appphp
//
//  Created by Captain 10.11.4 on 11/06/16.
//  Copyright © 2016 Captain 10.11.4. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ViewController : UIViewController



@property (weak, nonatomic) IBOutlet UITextField *name;

@property (weak, nonatomic) IBOutlet UITextField *email;
@property (weak, nonatomic) IBOutlet UITextField *pass;
- (IBAction)btn_submit:(id)sender;


@end

