//
//  ViewController.m
//  App1
//
//  Created by Victor de Lima on 14/05/14.
//  Copyright (c) 2014 Victor de Lima. All rights reserved.
//

#import "ViewController.h"
#import "ViewConfirmacao.h"

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

-(IBAction)limpaFields:(id)sender{
    self.txtNome.text = @"";
    self.labelIdade.text = @"-";
    self.txtEmail.text = @"";
    self.txtTelefone.text = @"";
    self.txtUniversidade.text = @"";
    self.txtCurso.text = @"";
}

-(IBAction)mudaIdade:(id)sender{
    UISlider *slider = (UISlider *)sender;
    int val = slider.value;
    self.labelIdade.text = [NSString stringWithFormat:@"%d",val];
    
}

-(IBAction)clickEnviar:(id)sender{
    
    NSString* nome = self.txtNome.text;
    NSString* email = self.txtEmail.text;
    NSString* idade = self.labelIdade.text;
    NSString* telefone = self.txtTelefone.text;
    NSString* universidade = self.txtUniversidade.text;
    NSString* curso = self.txtCurso.text;
    
    NSString* dir = @"/Users/cotrim/Desktop/registros.plist";
    
    
    NSMutableDictionary* aluno = [[NSMutableDictionary alloc] init];

    [aluno setValue:nome forKey:@"nome"];
    [aluno setValue:email forKey:@"e-mail"];
    [aluno setValue:idade forKey:@"idade"];
    [aluno setValue:telefone forKey:@"telefone"];
    [aluno setValue:universidade forKey:@"universidade"];
    [aluno setValue:curso forKey:@"curso"];

    [aluno writeToFile:dir atomically:YES];
    
    ViewConfirmacao *segundaTela = [[ViewConfirmacao alloc] init];
    [self presentViewController:segundaTela animated:YES completion:nil];
}

@end
