public class Foo {
	static String getToken() {
        Application_Settings__c appSetting = Application_Settings__c.getInstance('ZoomApplicationId');
        HttpRequest request = new HttpRequest();
        request.setEndpoint('callout:Zoom_OAuth');
        request.setMethod('POST');
        request.setHeader('Content-Type', 'application/x-www-form-urlencoded');
        request.setHeader('Host', 'zoom.us');
        request.setHeader('Authorization', 'Basic {!$Credential.AuthorizationHeaderValue}');
    }
}