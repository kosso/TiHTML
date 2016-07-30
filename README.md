# TiHTML
Encode/decode HTML special characters and entities and more...


Implementation of https://github.com/mwaterfall/MWFeedParser/blob/master/Classes/NSString%2BHTML.m as an Appcelerator Titanium iOS module. 

```
var tihtml = require('com.kossotihtml');
console.log('MODULE: '+ tihtml);
/*
// Provides:
tihtml.convertHTMLToPlainText(string)
tihtml.stringByDecodingHTMLEntities(string)
tihtml.stringByEncodingHTMLEntities(string)
tihtml.stringByEncodingHTMLEntitiesUnicode(string)
tihtml.stringWithNewLinesAsBRs(string)
tihtml.stringByRemovingNewLinesAndWhitespace(string)
returns string
*/

var decoded = tihtml.stringByDecodingHTMLEntities('COOL &amp; THE GANG &Aacute; &lt; a acute');
console.log(decoded);

var encoded = tihtml.stringByEncodingHTMLEntities('warm > cool & les gangs <div> double quote " double quote - single : \' Æ ô ');
console.log(encoded);
```

See `example/app.js` 

-----

@kosso

