/**
 * Copyright (c) Tiny Technologies, Inc. All rights reserved.
 * Licensed under the LGPL or a commercial license.
 * For LGPL see License.txt in the project root for license information.
 * For commercial licenses see https://www.tiny.cloud/
 *
 * Version: 5.10.5 (2022-05-25)
 */
!function(){"use strict";function i(e){return function(){return e}}function e(e){return e}function t(){return s}var n=tinymce.util.Tools.resolve("tinymce.PluginManager"),g=function(){return(g=Object.assign||function(e){for(var t,n=1,a=arguments.length;n<a;n++)for(var o in t=arguments[n])Object.prototype.hasOwnProperty.call(t,o)&&(e[o]=t[o]);return e}).apply(this,arguments)},u=i(!1),r=i(!0),s={fold:function(e,t){return e()},isSome:u,isNone:r,getOr:e,getOrThunk:a,getOrDie:function(e){throw new Error(e||"error: getOrDie called on none.")},getOrNull:i(null),getOrUndefined:i(void 0),or:e,orThunk:a,map:t,each:function(){},bind:t,exists:u,forall:r,filter:function(){return s},toArray:function(){return[]},toString:i("none()")};function a(e){return e()}function b(e,t){for(var n=e.length,a=new Array(n),o=0;o<n;o++){var i=e[o];a[o]=t(i,o)}return a}function m(e,t){for(var n=[],a=0,o=e.length;a<o;a++){var i=e[a];t(i,a)&&n.push(i)}return n}function f(e){var n=p.mac?{alt:"&#x2325;",ctrl:"&#x2303;",shift:"&#x21E7;",meta:"&#x2318;",access:"&#x2303;&#x2325;"}:{meta:"Ctrl ",access:"Shift + Alt "},t=b(e.split("+"),function(e){var t=e.toLowerCase().trim();return A(n,t)?n[t]:e});return p.mac?t.join("").replace(/\s/,""):t.join("+")}function k(e){function a(e){return'<a href="'+e.url+'" target="_blank" rel="noopener">'+e.name+"</a>"}var t,o,n,i,r,s,l,c;return{name:"plugins",title:"Plugins",items:[{type:"htmlpanel",presets:"document",html:[null==e?"":'<div data-mce-tabstop="1" tabindex="-1">'+(s=b((i=w((n=o=e).plugins),void 0===(r=n.getParam("forced_plugins"))?i:m(i,function(e){return!(-1<h.call(r,e))})),function(e){return"<li>"+(t=o,n=e,function(e,t,n){for(var a=0,o=e.length;a<o;a++){var i=e[a];if(t(i,a))return v.some(i);if(n(i,a))break}return v.none()}(d,function(e){return e.key===n},u).fold(function(){var e=t.plugins[n].getMetadata;return"function"==typeof e?a(e()):n},function(e){return a({name:"premium"===e.type?e.name+"*":e.name,url:"https://www.tiny.cloud/docs/plugins/"+e.type+"/"+e.slug})}))+"</li>";var t,n}),l=s.length,c=s.join(""),"<p><b>"+T.translate(["Plugins installed ({0}):",l])+"</b></p><ul>"+c+"</ul>")+"</div>",(t=b(m(d,function(e){var t=e.key,n=e.type;return"autocorrect"!==t&&"premium"===n}),function(e){return"<li>"+T.translate(e.name)+"</li>"}).join(""),'<div data-mce-tabstop="1" tabindex="-1"><p><b>'+T.translate("Premium plugins:")+"</b></p><ul>"+t+'<li class="tox-help__more-link" "><a href="https://www.tiny.cloud/pricing/?utm_campaign=editor_referral&utm_medium=help_dialog&utm_source=tinymce" target="_blank">'+T.translate("Learn more...")+"</a></li></ul></div>")].join("")}]}}function l(d,y){return function(){var e,t,n,a,o,i,r,s,l,c,u,m=(e=d,t=y,r={name:"shortcuts",title:"Handy Shortcuts",items:[{type:"table",header:["Action","Shortcut"],cells:b(x,function(e){var t=b(e.shortcuts,f).join(" or ");return[e.action,t]})}]},s={name:"keyboardnav",title:"Keyboard Navigation",items:[{type:"htmlpanel",presets:"document",html:"<h1>Editor UI keyboard navigation</h1>\n\n<h2>Activating keyboard navigation</h2>\n\n<p>The sections of the outer UI of the editor - the menubar, toolbar, sidebar and footer - are all keyboard navigable. As such, there are multiple ways to activate keyboard navigation:</p>\n<ul>\n  <li>Focus the menubar: Alt + F9 (Windows) or &#x2325;F9 (MacOS)</li>\n  <li>Focus the toolbar: Alt + F10 (Windows) or &#x2325;F10 (MacOS)</li>\n  <li>Focus the footer: Alt + F11 (Windows) or &#x2325;F11 (MacOS)</li>\n</ul>\n\n<p>Focusing the menubar or toolbar will start keyboard navigation at the first item in the menubar or toolbar, which will be highlighted with a gray background. Focusing the footer will start keyboard navigation at the first item in the element path, which will be highlighted with an underline. </p>\n\n<h2>Moving between UI sections</h2>\n\n<p>When keyboard navigation is active, pressing tab will move the focus to the next major section of the UI, where applicable. These sections are:</p>\n<ul>\n  <li>the menubar</li>\n  <li>each group of the toolbar </li>\n  <li>the sidebar</li>\n  <li>the element path in the footer </li>\n  <li>the wordcount toggle button in the footer </li>\n  <li>the branding link in the footer </li>\n  <li>the editor resize handle in the footer</li>\n</ul>\n\n<p>Pressing shift + tab will move backwards through the same sections, except when moving from the footer to the toolbar. Focusing the element path then pressing shift + tab will move focus to the first toolbar group, not the last.</p>\n\n<h2>Moving within UI sections</h2>\n\n<p>Keyboard navigation within UI sections can usually be achieved using the left and right arrow keys. This includes:</p>\n<ul>\n  <li>moving between menus in the menubar</li>\n  <li>moving between buttons in a toolbar group</li>\n  <li>moving between items in the element path</li>\n</ul>\n\n<p>In all these UI sections, keyboard navigation will cycle within the section. For example, focusing the last button in a toolbar group then pressing right arrow will move focus to the first item in the same toolbar group. </p>\n\n<h1>Executing buttons</h1>\n\n<p>To execute a button, navigate the selection to the desired button and hit space or enter.</p>\n\n<h1>Opening, navigating and closing menus</h1>\n\n<p>When focusing a menubar button or a toolbar button with a menu, pressing space, enter or down arrow will open the menu. When the menu opens the first item will be selected. To move up or down the menu, press the up or down arrow key respectively. This is the same for submenus, which can also be opened and closed using the left and right arrow keys.</p>\n\n<p>To close any active menu, hit the escape key. When a menu is closed the selection will be restored to its previous selection. This also works for closing submenus.</p>\n\n<h1>Context toolbars and menus</h1>\n\n<p>To focus an open context toolbar such as the table context toolbar, press Ctrl + F9 (Windows) or &#x2303;F9 (MacOS).</p>\n\n<p>Context toolbar navigation is the same as toolbar navigation, and context menu navigation is the same as standard menu navigation.</p>\n\n<h1>Dialog navigation</h1>\n\n<p>There are two types of dialog UIs in TinyMCE: tabbed dialogs and non-tabbed dialogs.</p>\n\n<p>When a non-tabbed dialog is opened, the first interactive component in the dialog will be focused. Users can navigate between interactive components by pressing tab. This includes any footer buttons. Navigation will cycle back to the first dialog component if tab is pressed while focusing the last component in the dialog. Pressing shift + tab will navigate backwards.</p>\n\n<p>When a tabbed dialog is opened, the first button in the tab menu is focused. Pressing tab will navigate to the first interactive component in that tab, and will cycle through the tab\u2019s components, the footer buttons, then back to the tab button. To switch to another tab, focus the tab button for the current tab, then use the arrow keys to cycle through the tab buttons.</p>"}]},l=k(e),a=C.majorVersion,o=C.minorVersion,i=0===a.indexOf("@")?"X.X.X":a+"."+o,c={name:"versions",title:"Version",items:[{type:"htmlpanel",html:"<p>"+T.translate(["You are using {0}",'<a href="https://www.tiny.cloud/docs/changelog/?utm_campaign=editor_referral&utm_medium=help_dialog&utm_source=tinymce" target="_blank">TinyMCE '+i+"</a>"])+"</p>",presets:"document"}]},u=g(((n={})[r.name]=r,n[s.name]=s,n[l.name]=l,n[c.name]=c,n),t.get()),v.from(e.getParam("help_tabs")).fold(function(){return-1!==(n=(t=w(e=u)).indexOf("versions"))&&(t.splice(n,1),t.push("versions")),{tabs:e,names:t};var e,t,n},function(e){return t=u,n={},a=b(e,function(e){return"string"==typeof e?(A(t,e)&&(n[e]=t[e]),e):(n[e.name]=e).name}),{tabs:n,names:a};var t,n,a})),h=m.tabs,p=function(e){for(var t=[],n=function(e){t.push(e)},a=0;a<e.length;a++)e[a].each(n);return t}(b(m.names,function(e){return A(t=h,n=e)?v.from(t[n]):v.none();var t,n}));d.windowManager.open({title:"Help",size:"medium",body:{type:"tabpanel",tabs:p},buttons:[{type:"cancel",name:"close",text:"Close",primary:!0}],initialData:{}})}}var c=function(n){function e(){return o}function t(e){return e(n)}var a=i(n),o={fold:function(e,t){return t(n)},isSome:r,isNone:u,getOr:a,getOrThunk:a,getOrDie:a,getOrNull:a,getOrUndefined:a,or:e,orThunk:e,map:function(e){return c(e(n))},each:function(e){e(n)},bind:t,exists:t,forall:t,filter:function(e){return e(n)?o:s},toArray:function(){return[n]},toString:function(){return"some("+n+")"}};return o},v={some:c,none:t,from:function(e){return null==e?s:c(e)}},h=Array.prototype.indexOf,w=Object.keys,o=Object.hasOwnProperty,A=function(e,t){return o.call(e,t)},p=tinymce.util.Tools.resolve("tinymce.Env"),x=[{shortcuts:["Meta + B"],action:"Bold"},{shortcuts:["Meta + I"],action:"Italic"},{shortcuts:["Meta + U"],action:"Underline"},{shortcuts:["Meta + A"],action:"Select all"},{shortcuts:["Meta + Y","Meta + Shift + Z"],action:"Redo"},{shortcuts:["Meta + Z"],action:"Undo"},{shortcuts:["Access + 1"],action:"Heading 1"},{shortcuts:["Access + 2"],action:"Heading 2"},{shortcuts:["Access + 3"],action:"Heading 3"},{shortcuts:["Access + 4"],action:"Heading 4"},{shortcuts:["Access + 5"],action:"Heading 5"},{shortcuts:["Access + 6"],action:"Heading 6"},{shortcuts:["Access + 7"],action:"Paragraph"},{shortcuts:["Access + 8"],action:"Div"},{shortcuts:["Access + 9"],action:"Address"},{shortcuts:["Alt + 0"],action:"Open help dialog"},{shortcuts:["Alt + F9"],action:"Focus to menubar"},{shortcuts:["Alt + F10"],action:"Focus to toolbar"},{shortcuts:["Alt + F11"],action:"Focus to element path"},{shortcuts:["Ctrl + F9"],action:"Focus to contextual toolbar"},{shortcuts:["Shift + Enter"],action:"Open popup menu for split buttons"},{shortcuts:["Meta + K"],action:"Insert link (if link plugin activated)"},{shortcuts:["Meta + S"],action:"Save (if save plugin activated)"},{shortcuts:["Meta + F"],action:"Find (if searchreplace plugin activated)"},{shortcuts:["Meta + Shift + F"],action:"Switch to or from fullscreen mode"}],T=tinymce.util.Tools.resolve("tinymce.util.I18n"),d=b([{key:"advlist",name:"Advanced List"},{key:"anchor",name:"Anchor"},{key:"autolink",name:"Autolink"},{key:"autoresize",name:"Autoresize"},{key:"autosave",name:"Autosave"},{key:"bbcode",name:"BBCode"},{key:"charmap",name:"Character Map"},{key:"code",name:"Code"},{key:"codesample",name:"Code Sample"},{key:"colorpicker",name:"Color Picker"},{key:"directionality",name:"Directionality"},{key:"emoticons",name:"Emoticons"},{key:"fullpage",name:"Full Page"},{key:"fullscreen",name:"Full Screen"},{key:"help",name:"Help"},{key:"hr",name:"Horizontal Rule"},{key:"image",name:"Image"},{key:"imagetools",name:"Image Tools"},{key:"importcss",name:"Import CSS"},{key:"insertdatetime",name:"Insert Date/Time"},{key:"legacyoutput",name:"Legacy Output"},{key:"link",name:"Link"},{key:"lists",name:"Lists"},{key:"media",name:"Media"},{key:"nonbreaking",name:"Nonbreaking"},{key:"noneditable",name:"Noneditable"},{key:"pagebreak",name:"Page Break"},{key:"paste",name:"Paste"},{key:"preview",name:"Preview"},{key:"print",name:"Print"},{key:"quickbars",name:"Quick Toolbars"},{key:"save",name:"Save"},{key:"searchreplace",name:"Search and Replace"},{key:"spellchecker",name:"Spell Checker"},{key:"tabfocus",name:"Tab Focus"},{key:"table",name:"Table"},{key:"template",name:"Template"},{key:"textcolor",name:"Text Color"},{key:"textpattern",name:"Text Pattern"},{key:"toc",name:"Table of Contents"},{key:"visualblocks",name:"Visual Blocks"},{key:"visualchars",name:"Visual Characters"},{key:"wordcount",name:"Word Count"},{key:"a11ychecker",name:"Accessibility Checker",type:"premium"},{key:"advcode",name:"Advanced Code Editor",type:"premium"},{key:"advtable",name:"Advanced Tables",type:"premium"},{key:"autocorrect",name:"Autocorrect",type:"premium"},{key:"casechange",name:"Case Change",type:"premium"},{key:"checklist",name:"Checklist",type:"premium"},{key:"export",name:"Export",type:"premium"},{key:"mediaembed",name:"Enhanced Media Embed",type:"premium"},{key:"formatpainter",name:"Format Painter",type:"premium"},{key:"linkchecker",name:"Link Checker",type:"premium"},{key:"mentions",name:"Mentions",type:"premium"},{key:"pageembed",name:"Page Embed",type:"premium"},{key:"permanentpen",name:"Permanent Pen",type:"premium"},{key:"powerpaste",name:"PowerPaste",type:"premium"},{key:"rtc",name:"Real-Time Collaboration",type:"premium"},{key:"tinymcespellchecker",name:"Spell Checker Pro",type:"premium"},{key:"tinycomments",name:"Tiny Comments",type:"premium",slug:"comments"},{key:"tinydrive",name:"Tiny Drive",type:"premium"}],function(e){return g(g({},e),{type:e.type||"opensource",slug:e.slug||e.key})}),C=tinymce.util.Tools.resolve("tinymce.EditorManager");n.add("help",function(e){var t,n,a,o=(t={},{get:function(){return t},set:function(e){t=e}}),i={addTab:function(e){var t=n.get();t[e.name]=e,n.set(t)}},r=l(e,n=o),s=r;return(a=e).ui.registry.addButton("help",{icon:"help",tooltip:"Help",onAction:s}),a.ui.registry.addMenuItem("help",{text:"Help",icon:"help",shortcut:"Alt+0",onAction:s}),e.addCommand("mceHelp",r),e.shortcuts.add("Alt+0","Open help dialog","mceHelp"),i})}();
