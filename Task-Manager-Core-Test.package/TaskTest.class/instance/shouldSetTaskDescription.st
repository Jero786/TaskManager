asserting
shouldSetTaskDescription
	| task |
	task := Task description: 'task-description1'.
	self assert: task description equals: 'task-description1'