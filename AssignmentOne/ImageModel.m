//
//  ImageModel.m
//  AssignmentOne
//
//  Created by Kas Taghavi on 9/15/22.
//

#import "ImageModel.h"

@interface ImageModel ()

@property (strong, nonatomic) NSArray* imageNames;

@end

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
            _imageNames = @[@"DallasM",@"LAM",@"LondonM", @"NYCM", @"TokyoM", @"DallasN",@"LAN",@"LondonN", @"NYCN",@"TokyoN"];
        
    return _imageNames;
}


-(UIImage*)getImageWithName:(NSString*)name{
    UIImage* image = nil;
    
    image = [UIImage imageNamed:name];
    
    return image;
}

-(UIImage*)getImageWithIndex:(NSInteger)index{
    return [UIImage imageNamed:self.imageNames[index]];
}

-(NSInteger) numberOfImages{
    return [self.imageNames count];
}

-(NSString*) getImageNameForIndex:(NSInteger)index {
    return self.imageNames[index];
}
@end
