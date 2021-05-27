//
//  ViewController.h
//  Сalculator
//
//  Created by Сергей Горячев on 26.03.2021.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@property (weak, nonatomic) IBOutlet UITextField *sumFirstNumberTextField;

@property (weak, nonatomic) IBOutlet UITextField *sumSecondNumberTextField;

@property (weak, nonatomic) IBOutlet UILabel *sumResultLabel;

@property (weak, nonatomic) IBOutlet UITextField *subtractionFirstNumberTextField;

@property (weak, nonatomic) IBOutlet UITextField *subtractionSecondNumberTextField;

@property (weak, nonatomic) IBOutlet UILabel *subtractionResultLabel;

@property (weak, nonatomic) IBOutlet UITextField *multiplicationFirstNumberTextField;

@property (weak, nonatomic) IBOutlet UITextField *multiplicationSecondNumberTextField;

@property (weak, nonatomic) IBOutlet UILabel *multiplicationResultLabel;

@property (weak, nonatomic) IBOutlet UITextField *divideFirstNumberTextField;

@property (weak, nonatomic) IBOutlet UITextField *divideSecondNumberTextField;

@property (weak, nonatomic) IBOutlet UILabel *divideResultLabel;

@property (weak, nonatomic) IBOutlet UITextField *remainderFirstNumberTextField;

@property (weak, nonatomic) IBOutlet UITextField *remainderSecondNumberTextField;

@property (weak, nonatomic) IBOutlet UILabel *remainderResultLabel;

@property (weak, nonatomic) IBOutlet UILabel *averageNumberLabel;

@property (weak, nonatomic) IBOutlet UITextField *averageFirstNumberTextField;

@property (weak, nonatomic) IBOutlet UITextField *averageSecondNumberTextField;

@property (weak, nonatomic) IBOutlet UITextField *averageThreeNumberTextField;

@property (weak, nonatomic) IBOutlet UILabel *averageResultLabel;

- (IBAction)resultButton:(id)sender;

@end

