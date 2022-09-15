//
//  ImageModel.m
//  AssignmentOne
//
//  Created by Kas Taghavi on 9/15/22.
//

#import "ImageModel.h"

@implementation ImageModel
@synthesize imageNames = _imageNames;

+(ImageModel*)sharedInstance{
    static ImageModel* _sharedInstance = nil;
    static dispatch_once_t predicate;
    
    dispatch_once(&predicate, ^{
        _sharedInstance = [[ImageModel alloc] init];
    } );
    return _sharedInstance;
}

-(NSArray*) imageNames{
    if(!_imageNames)
        _imageNames = @[@"DallasM",@"DallasN",@"LondonM",@"LondonN",@"TokyoM",@"TokyoN",@"NYCM",@"NYCN",@"LAM",@"LAN"];
    
    return _imageNames;
}


-(UIImage*)getImageWithName:(NSString*)name{
    UIImage* image = nil;
    
    image = [UIImage imageNamed:name];
    
    return image;
}

@end
