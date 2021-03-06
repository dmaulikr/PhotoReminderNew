//------------------------------------------------------------------------------
// <wsdl2code-generated>
// This code was generated by http://www.wsdl2code.com iPhone version 2.0
// Date Of Creation: 8/27/2014 3:43:10 PM
//
//  Please dont change this code, regeneration will override your changes
//</wsdl2code-generated>
//
//------------------------------------------------------------------------------
//
//This source code was auto-generated by Wsdl2Code Version
//

#import "checkSharesRet.h" 


@implementation checkSharesRet

-(id)initWithArray:(NSArray*)array {
    self = [super init];
    if (self) {
        @try {
            for (int i0 = 0; i0 < [array count]; i0++)
            {
                if ( ([[array objectAtIndex:i0] objectForKey:@"nodeContent"] !=nil) &&  ([[[array objectAtIndex:i0]objectForKey:@"nodeName"]caseInsensitiveCompare:@"globalReturn"]==NSOrderedSame)){
                    NSString *nodeContentValue = [[NSString alloc]initWithString:[[array objectAtIndex:i0] objectForKey:@"nodeContent"]];
                    [self setGlobalReturn:[nodeContentValue intValue]];
                }
                else if ( ([[array objectAtIndex:i0] objectForKey:@"nodeContent"] !=nil) &&  ([[[array objectAtIndex:i0]objectForKey:@"nodeName"]caseInsensitiveCompare:@"serverCategoryID"]==NSOrderedSame)){
                    NSString *nodeContentValue = [[NSString alloc]initWithString:[[array objectAtIndex:i0] objectForKey:@"nodeContent"]];
                    [self setServerCategoryID:[nodeContentValue intValue]];
                }
                else if ( ([[array objectAtIndex:i0] objectForKey:@"nodeContent"] !=nil) &&  ([[[array objectAtIndex:i0]objectForKey:@"nodeName"]caseInsensitiveCompare:@"friendEmail"]==NSOrderedSame)){
                    NSString* nodeContentValue = [[NSString alloc] initWithString:[[array objectAtIndex:i0] objectForKey:@"nodeContent"]];
                    if (nodeContentValue !=nil)
                        [self setFriendEmail:nodeContentValue];
                }
            }
        }
        @catch(NSException *ex){
        }
    }
    return self;
}
-(NSString*)toString:(BOOL)addNameWrap {
    NSMutableString *nsString = [NSMutableString string];
    if (addNameWrap == YES)
        [nsString appendString:@"<checkSharesRet>" ];
    [nsString appendFormat:@"<globalReturn>%d</globalReturn>" , [self globalReturn]];
    [nsString appendFormat:@"<serverCategoryID>%d</serverCategoryID>" , [self serverCategoryID]];
    if (self.friendEmail != nil) {
        [nsString appendFormat:@"<friendEmail>%@</friendEmail>" , [self friendEmail]];
    }
    if (addNameWrap == YES)
        [nsString appendString:@"</checkSharesRet>" ];
    return nsString;
}
#pragma mark - NSCoding
-(id)initWithCoder:(NSCoder *)decoder{
    self = [super init];
    if (self){
        self.globalReturn = [decoder decodeInt32ForKey:@"globalReturn"];
        self.serverCategoryID = [decoder decodeInt32ForKey:@"serverCategoryID"];
        self.friendEmail = [decoder decodeObjectForKey:@"friendEmail"];
    }
    return self;
}
-(void)encodeWithCoder:(NSCoder *)encoder{
    [encoder encodeInt32:self.globalReturn forKey:@"globalReturn"];
    [encoder encodeInt32:self.serverCategoryID forKey:@"serverCategoryID"];
    [encoder encodeObject:self.friendEmail forKey:@"friendEmail"];
}
-(id)copyWithZone:(NSZone *)zone {
    checkSharesRet *finalCopy = [[[self class] allocWithZone: zone] init];
    
    finalCopy.globalReturn = self.globalReturn;
    
    finalCopy.serverCategoryID = self.serverCategoryID;
    
    NSString *copy3 = [self.friendEmail copy];
    finalCopy.friendEmail = copy3;
    
    return finalCopy;
}

@end
