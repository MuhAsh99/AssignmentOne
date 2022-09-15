//
//  ImageModel.h
//  AssignmentOne
//
//  Created by Kas Taghavi on 9/15/22.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ImageModel : NSObject

+(ImageModel*)sharedInstance;

-(UIImage*)getImageWithName:(NSString*)name;

@property (strong, nonatomic) NSArray* imageNames;

@end

NS_ASSUME_NONNULL_END
