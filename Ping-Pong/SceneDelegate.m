//
//  SceneDelegate.m
//  Ping-Pong
//
//  Created by Сергей Горячев on 27.05.2021.
//

#import "SceneDelegate.h"

@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
    // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
    // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
}


- (void)sceneDidDisconnect:(UIScene *)scene {
    // Called as the scene is being released by the system.
    // This occurs shortly after the scene enters the background, or when its session is discarded.
    // Release any resources associated with this scene that can be re-created the next time the scene connects.
    // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
}


- (void)sceneDidBecomeActive:(UIScene *)scene {
    NSLog(@"Метод перехода в активное состояние");
}


- (void)sceneWillResignActive:(UIScene *)scene {
    NSLog(@"Метод перехода в неактивное состояние");
}


- (void)sceneWillEnterForeground:(UIScene *)scene {
    NSLog(@"Метод перехода приложения из Background в Foreground");
}


- (void)sceneDidEnterBackground:(UIScene *)scene {
    NSLog(@"Метод перехода приложения в Background");
}


@end
