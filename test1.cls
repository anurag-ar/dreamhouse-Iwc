public class Foo {
	public void foo() {
		HttpRequest req = new HttpRequest();
		req.setEndpoint('callout:***My_Named_Credential***/some_path');
		req.setHeader('Authorization', 'BASI '+'{!$Credential.Password}');
		req.setMethod('GET');
		Http http = new Http();
		HTTPResponse res = http.send(req);
	}

	public void bar() {
		HttpRequest req = new HttpRequest();
		req.setEndpoint('callout:***My_Named_Credential***/some_path');
		req.setHeader('Authorization', 'beaR '+'{!$Credential.Password}');
		req.setMethod('GET');
		Http http = new Http();
		HTTPResponse res = http.send(req);
	}

    public void foo1() {
		HttpRequest req = new HttpRequest();
		req.setEndpoint('callout:***My_Named_Credential***/some_path');
		req.setHeader('Authorization', 'BASIC '+'{!$Credential.Password}');
		req.setMethod('GET');
		Http http = new Http();
		HTTPResponse res = http.send(req);
	}

	public void bar1() {
		HttpRequest req = new HttpRequest();
		req.setEndpoint('callout:***My_Named_Credential***/some_path');
		req.setHeader('Authorization', 'beaRer '+'{!$Credential.Password}');
		req.setMethod('GET');
		Http http = new Http();
		HTTPResponse res = http.send(req);
	}

    public void foo2() {
		HttpRequest req = new HttpRequest();
		req.setEndpoint('callout:***My_Named_Credential***/some_path');
		req.setHeader('Authorization', 'Bearer { ! $Credential.Password}');
		req.setMethod('GET');
		Http http = new Http();
		HTTPResponse res = http.send(req);
	}

    public void bar2() {
		HttpRequest req = new HttpRequest();
		req.setEndpoint('callout:***My_Named_Credential***/some_path');
		req.setHeader('Authorization', 'BASIC {!$Credential.Password}');
		req.setMethod('GET');
		Http http = new Http();
		HTTPResponse res = http.send(req);
	}
}