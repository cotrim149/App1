//
//  ViewController.m
//  App1
//
//  Created by Victor de Lima on 14/05/14.
//  Copyright (c) 2014 Victor de Lima. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [self.txtNome resignFirstResponder];
    [self.txtCurso resignFirstResponder];
    [self.txtEmail resignFirstResponder];
    [self.txtTelefone resignFirstResponder];
    [self.txtUniversidade resignFirstResponder];
}

@end
