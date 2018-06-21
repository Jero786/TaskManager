asserting
shouldSetParentTask
	| task taskParent |
	task := Task description: 'task-child'.
	taskParent := Task description: 'task-parent'.
	task setParentTask: taskParent.
	
	self assert: task getParentTask description = 'task-parent'