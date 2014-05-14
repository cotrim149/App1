//
//  ViewController.h
//  App1
//
//  Created by Victor de Lima on 14/05/14.
//  Copyright (c) 2014 Victor de Lima. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *txtNome;
@property (weak, nonatomic) IBOutlet UITextField *txtEmail;
@property (weak, nonatomic) IBOutlet UITextField *txtTelefone;
@property (weak, nonatomic) IBOutlet UITextField *txtUniversidade;
@property (weak, nonatomic) IBOutlet UITextField *txtCurso;

-(IBAction)clickEnviar:(id)sender;

@end
