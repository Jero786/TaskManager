enumerating
withServerDo: block
	| server |
	server := ZnServer on: 9999 + 10 atRandom.
	[ server start.
	self assert: server isRunning & server isListening.
	server delegate: TaskManagerHome new.
	block cull: server ]
		ensure: [ server stop ]