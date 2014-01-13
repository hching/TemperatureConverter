//
//  TemperatureViewController.m
//  temperatureConverter
//
//  Created by Henry Ching on 1/10/14.
//  Copyright (c) 2014 YahooHenry. All rights reserved.
//

#import "TemperatureViewController.h"

@interface TemperatureViewController ()

@property (weak, nonatomic) IBOutlet UILabel *fahrenheitLabel;
@property (weak, nonatomic) IBOutlet UILabel *celsiusLabel;
@property (weak, nonatomic) IBOutlet UITextField *fahrenheitTextField;
@property (weak, nonatomic) IBOutlet UITextField *celsiusTextField;
@property (weak, nonatomic) IBOutlet UIButton *convertButton;

- (void)convertTemperature;
- (IBAction)convertButtonTouchDown:(id)sender;
- (IBAction)onTap:(id)sender;

@end

@implementation TemperatureViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"Temperature";
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

#pragma mark - Public methods

- (void)convertTemperature {
    if (![self.fahrenheitTextField.text isEqualToString:@""]) {
        float celsiusValue = (([self.fahrenheitTextField.text floatValue] - 32) * 100) / 180;
        self.celsiusTextField.text = [NSString stringWithFormat:@"%0.2f", celsiusValue];
    } else if (![self.celsiusTextField.text isEqualToString:@""]) {
        float fahrenheitValue = ((9 * [self.celsiusTextField.text floatValue]) / 5) + 32;
        self.fahrenheitTextField.text = [NSString stringWithFormat:@"%0.2f", fahrenheitValue];
    }
}

- (IBAction)convertButtonTouchDown:(id)sender {
    [self convertTemperature];
}

- (IBAction)onTap:(id)sender {
    [self.view endEditing:YES];
}

@end
