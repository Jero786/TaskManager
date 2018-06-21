public
handleRequest: request
	request uri path = #home
		ifFalse: [ ^ ZnResponse notFound: request uri ].
	request method = #GET
		ifTrue: [ ^ ZnResponse ok: (ZnEntity html: self handleGetRequest) ].
	request method = #POST
		ifTrue: [ ^ ZnResponse ok: (ZnEntity html: (self handlePostRequest: request)) ]