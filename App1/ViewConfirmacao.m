//
//  ViewConfirmacao.m
//  App1
//
//  Created by Victor de Lima on 14/05/14.
//  Copyright (c) 2014 Victor de Lima. All rights reserved.
//

#import "ViewConfirmacao.h"
#import "ViewController.h"

@interface ViewConfirmacao ()

@end

@implementation ViewConfirmacao

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

-(IBAction)clickOK:(id)sender{
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(IBAction)novoCadastro:(id)sender{
    
}
@end
