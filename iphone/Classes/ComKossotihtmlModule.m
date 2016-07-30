/**
 * TiHTML
 *
 * Created by Kosso
 * Copyright (c) 2016 . All rights reserved.
 */

#import "ComKossotihtmlModule.h"
#import "TiBase.h"
#import "TiHost.h"
#import "TiUtils.h"

@implementation ComKossotihtmlModule

#pragma mark Internal

// this is generated for your module, please do not change it
-(id)moduleGUID
{
	return @"61ceb6d1-0d57-4b0a-8078-1450dbb780e6";
}

// this is generated for your module, please do not change it
-(NSString*)moduleId
{
	return @"com.kossotihtml";
}

#pragma mark Lifecycle

-(void)startup
{
	// this method is called when the module is first loaded
	// you *must* call the superclass
	[super startup];

	NSLog(@"[INFO] %@ loaded",self);
}

-(void)shutdown:(id)sender
{
	// this method is called when the module is being unloaded
	// typically this is during shutdown. make sure you don't do too
	// much processing here or the app will be quit forceably

	// you *must* call the superclass
	[super shutdown:sender];
}

#pragma mark Cleanup

-(void)dealloc
{
	// release any resources that have been retained by the module
	[super dealloc];
}

#pragma mark Internal Memory Management

-(void)didReceiveMemoryWarning:(NSNotification*)notification
{
	// optionally release any resources that can be dynamically
	// reloaded once memory is available - such as caches
	[super didReceiveMemoryWarning:notification];
}

#pragma mark Listener Notifications

-(void)_listenerAdded:(NSString *)type count:(int)count
{
	if (count == 1 && [type isEqualToString:@"my_event"])
	{
		// the first (of potentially many) listener is being added
		// for event named 'my_event'
	}
}

-(void)_listenerRemoved:(NSString *)type count:(int)count
{
	if (count == 0 && [type isEqualToString:@"my_event"])
	{
		// the last listener called for event named 'my_event' has
		// been removed, we can optionally clean up any resources
		// since no body is listening at this point for that event
	}
}

#pragma Public APIs


/*

 // see:  http://stackoverflow.com/a/2843454/600628
 
    NSString+HTML category 
 
    // Strips HTML tags & comments, removes extra whitespace and decodes HTML character entities.
     - (NSString *)stringByConvertingHTMLToPlainText;
     
     // Decode all HTML entities using GTM.
     - (NSString *)stringByDecodingHTMLEntities;
     
     // Encode all HTML entities using GTM.
     - (NSString *)stringByEncodingHTMLEntities;
     
     // Minimal unicode encoding will only cover characters from table
     // A.2.2 of http://www.w3.org/TR/xhtml1/dtds.html#a_dtd_Special_characters
     // which is what you want for a unicode encoded webpage.
     - (NSString *)stringByEncodingHTMLEntities:(BOOL)isUnicode;
     
     // Replace newlines with <br /> tags.
     - (NSString *)stringWithNewLinesAsBRs;
     
     // Remove newlines and white space from string.
     - (NSString *)stringByRemovingNewLinesAndWhitespace;
     
 
*/

-(id)convertHTMLToPlainText:(id)value
{
    NSString *converted = [[TiUtils stringValue:[value objectAtIndex:0]] stringByConvertingHTMLToPlainText];
    return converted;
}

-(id)stringByDecodingHTMLEntities:(id)value
{
    NSString *decoded = [[TiUtils stringValue:[value objectAtIndex:0]] stringByDecodingHTMLEntities];
    return decoded;
}

-(id)stringByEncodingHTMLEntities:(id)value
{
    NSString *encoded = [[TiUtils stringValue:[value objectAtIndex:0]] stringByEncodingHTMLEntities];
    return encoded;
}

-(id)stringByEncodingHTMLEntitiesUnicode:(id)value
{
    NSString *encoded = [[TiUtils stringValue:[value objectAtIndex:0]] stringByEncodingHTMLEntities:YES];
    return encoded;
}

-(id)stringWithNewLinesAsBRs:(id)value
{
    NSString *encoded = [[TiUtils stringValue:[value objectAtIndex:0]] stringWithNewLinesAsBRs];
    return encoded;
}
-(id)stringByRemovingNewLinesAndWhitespace:(id)value
{
    NSString *encoded = [[TiUtils stringValue:[value objectAtIndex:0]] stringByRemovingNewLinesAndWhitespace];
    return encoded;
}



@end
