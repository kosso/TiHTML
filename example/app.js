// this sets the background color of the master UIView (when there are no windows/tab groups on it)
Titanium.UI.setBackgroundColor('#000');

// create tab group
var tabGroup = Titanium.UI.createTabGroup();

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



// .. ignore the rest. Nothign to see here.. move along.. 

//
// create base UI tab and root window
//
var win1 = Titanium.UI.createWindow({  
    title:'Tab 1',
    backgroundColor:'#fff'
});
var tab1 = Titanium.UI.createTab({  
    icon:'KS_nav_views.png',
    title:'Tab 1',
    window:win1
});

var label1 = Titanium.UI.createLabel({
	color:'#999',
	text:'I am Window 1',
	font:{fontSize:20,fontFamily:'Helvetica Neue'},
	textAlign:'center',
	width:'auto'
});

win1.add(label1);

//
// create controls tab and root window
//
var win2 = Titanium.UI.createWindow({  
    title:'Tab 2',
    backgroundColor:'#fff'
});
var tab2 = Titanium.UI.createTab({  
    icon:'KS_nav_ui.png',
    title:'Tab 2',
    window:win2
});

var label2 = Titanium.UI.createLabel({
	color:'#999',
	text:'I am Window 2',
	font:{fontSize:20,fontFamily:'Helvetica Neue'},
	textAlign:'center',
	width:'auto'
});

win2.add(label2);



//
//  add tabs
//
tabGroup.addTab(tab1);  
tabGroup.addTab(tab2);  


// open tab group
tabGroup.open();

