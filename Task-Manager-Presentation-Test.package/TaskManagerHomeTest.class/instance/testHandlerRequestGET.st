enumerating
testHandlerRequestGET
	self
		withServerDo: [ :server | 
			| client |
			client := ZnClient new.
			client
				url: server localUrl;
				addPath: #home.
			client get.
			self assert: client isSuccess.
			self assert: (client response entity string includesSubstring: 'Image').
			client close ]