//
//  ViewController.m
//  TempCalculator
//
//  Created by Kapil Khatri on 11/04/19.
//  Copyright © 2019 Kapil. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}



- (IBAction)segCalculator:(id)sender {
    
    if(self.controlSeg.selectedSegmentIndex == 0)
    {
        self.enterLabel.text = @"Enter Fahrenheit";
        self.textField.text = @"";
        self.outputLabel.text = @"0 Celsius";
        self.imageView.image = [UIImage imageNamed:@"Temp1.png"];
    }
    else
    {
        self.enterLabel.text = @"Enter Celcius";
        self.textField.text = @"";
        self.outputLabel.text = @"0 Fahrenheit";
        self.imageView.image = [UIImage imageNamed:@"Temp1.png"];
        
    }
}

- (IBAction)calculate:(id)sender {
    
    if(self.controlSeg.selectedSegmentIndex == 0)
    {
        double fharenheit = [self.textField.text doubleValue];
        double celsius = (fharenheit-32)*5/9;

        self.outputLabel.text = [NSString stringWithFormat:@"%2.2lf Celcius",celsius];
        
        if(celsius > 120)
        {
            self.imageView.image = [UIImage imageNamed:@"Temp9.png"];
        }
        else if(celsius >100)
        {
            self.imageView.image = [UIImage imageNamed:@"Temp8.png"];
        }
        else if(celsius >80)
        {
            self.imageView.image = [UIImage imageNamed:@"Temp7.png"];
        }
        else if(celsius >60)
        {
            self.imageView.image = [UIImage imageNamed:@"Temp6.png"];
        }
        else if(celsius >40)
        {
            self.imageView.image = [UIImage imageNamed:@"Temp5.png"];
        }
        else if(celsius >20)
        {
            self.imageView.image = [UIImage imageNamed:@"Temp4.png"];
        }
        else if(celsius >0)
        {
            self.imageView.image = [UIImage imageNamed:@"Temp3.png"];
        }
        else if(celsius > -20)
        {
            self.imageView.image = [UIImage imageNamed:@"Temp2.png"];
        }
        else if(celsius < -20)
        {
            self.imageView.image = [UIImage imageNamed:@"Temp1.png"];
        }
        
    }
    else
    {
        double celcius = [self.textField.text doubleValue];
        double fharenheit = (celcius*9/5)+32;
        
        self.outputLabel.text = [NSString stringWithFormat:@"%2.2lf Fharenheit",fharenheit];
        
        if(fharenheit > 120)
        {
            self.imageView.image = [UIImage imageNamed:@"Temp9.png"];
        }
        else if(fharenheit >100)
        {
            self.imageView.image = [UIImage imageNamed:@"Temp8.png"];
        }
        else if(fharenheit >80)
        {
            self.imageView.image = [UIImage imageNamed:@"Temp7.png"];
        }
        else if(fharenheit >60)
        {
            self.imageView.image = [UIImage imageNamed:@"Temp6.png"];
        }
        else if(fharenheit >40)
        {
            self.imageView.image = [UIImage imageNamed:@"Temp5.png"];
        }
        else if(fharenheit >20)
        {
            self.imageView.image = [UIImage imageNamed:@"Temp4.png"];
        }
        else if(fharenheit >0)
        {
            self.imageView.image = [UIImage imageNamed:@"Temp3.png"];
        }
        else if(fharenheit > -20)
        {
            self.imageView.image = [UIImage imageNamed:@"Temp2.png"];
        }
        else if(fharenheit < -20)
        {
            self.imageView.image = [UIImage imageNamed:@"Temp1.png"];
        }
        
        
        
        
    }
}
@end
