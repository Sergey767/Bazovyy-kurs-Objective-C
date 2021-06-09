//
//  GameViewController.h
//  Ping-Pong
//
//  Created by Сергей Горячев on 27.05.2021.
//

#import <UIKit/UIKit.h>

#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height
#define HALF_SCREEN_WIDTH SCREEN_WIDTH/2
#define HALF_SCREEN_HEIGHT SCREEN_HEIGHT/2
#define MAX_SCORE 6

NS_ASSUME_NONNULL_BEGIN

@interface GameViewController : UIViewController

@end

NS_ASSUME_NONNULL_END
