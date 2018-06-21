asserting
shouldSetParentTask
	| task taskParent |
	task := Task description: 'task-child'.
	taskParent := Task description: 'task-parent'.
	task parentTask: taskParent.
	
	self assert: task parentTask description = 'task-parent'