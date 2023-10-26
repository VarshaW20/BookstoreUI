//@ui5-bundle bookstoreui/Component-preload.js
jQuery.sap.registerPreloadedModules({
"version":"2.0",
"modules":{
	"bookstoreui/Component.js":function(){sap.ui.define(["sap/fe/core/AppComponent"],function(e){"use strict";return e.extend("bookstoreui.Component",{metadata:{manifest:"json"}})});
},
	"bookstoreui/i18n/i18n.properties":'# This is the resource bundle for bookstoreui\n\n#Texts for manifest.json\n\n#XTIT: Application name\nappTitle=Book and Authors Service\n\n#YDES: Application description\nappDescription=Book and Authors Service',
	"bookstoreui/manifest.json":'{"_version":"1.58.0","sap.app":{"id":"bookstoreui","type":"application","i18n":"i18n/i18n.properties","applicationVersion":{"version":"0.0.1"},"title":"{{appTitle}}","description":"{{appDescription}}","resources":"resources.json","sourceTemplate":{"id":"@sap/generator-fiori:lrop","version":"1.11.2","toolsId":"63bc2253-08a5-4435-9973-186021a23b47"},"dataSources":{"mainService":{"uri":"BookService/","type":"OData","settings":{"annotations":[],"localUri":"localService/metadata.xml","odataVersion":"4.0"}}}},"sap.ui":{"technology":"UI5","icons":{"icon":"","favIcon":"","phone":"","phone@2":"","tablet":"","tablet@2":""},"deviceTypes":{"desktop":true,"tablet":true,"phone":true}},"sap.ui5":{"flexEnabled":true,"dependencies":{"minUI5Version":"1.119.1","libs":{"sap.m":{},"sap.ui.core":{},"sap.ushell":{},"sap.fe.templates":{}}},"contentDensities":{"compact":true,"cozy":true},"models":{"i18n":{"type":"sap.ui.model.resource.ResourceModel","settings":{"bundleName":"bookstoreui.i18n.i18n"}},"":{"dataSource":"mainService","preload":true,"settings":{"synchronizationMode":"None","operationMode":"Server","autoExpandSelect":true,"earlyRequests":true}},"@i18n":{"type":"sap.ui.model.resource.ResourceModel","uri":"i18n/i18n.properties"}},"resources":{"css":[]},"routing":{"routes":[{"pattern":":?query:","name":"AuthorsList","target":"AuthorsList"},{"pattern":"Authors({key}):?query:","name":"AuthorsObjectPage","target":"AuthorsObjectPage"}],"targets":{"AuthorsList":{"type":"Component","id":"AuthorsList","name":"sap.fe.templates.ListReport","options":{"settings":{"contextPath":"/Authors","variantManagement":"Page","navigation":{"Authors":{"detail":{"route":"AuthorsObjectPage"}}},"controlConfiguration":{"@com.sap.vocabularies.UI.v1.LineItem":{"tableSettings":{"selectionMode":"Single","type":"ResponsiveTable"}}}}}},"AuthorsObjectPage":{"type":"Component","id":"AuthorsObjectPage","name":"sap.fe.templates.ObjectPage","options":{"settings":{"editableHeaderContent":false,"contextPath":"/Authors"}}}}},"extends":{"extensions":{"sap.ui.controllerExtensions":{}}}},"sap.fiori":{"registrationIds":[],"archeType":"transactional"},"sap.cloud":{"public":true,"service":"bookservice"}}'
}});
