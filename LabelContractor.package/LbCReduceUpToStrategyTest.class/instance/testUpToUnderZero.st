tests
testUpToUnderZero

	| labelAfter |
	
	labelAfter := (aContractor upTo: 0) reduce: exampleString.
	self assert: labelAfter equals: String empty . 
	
	labelAfter := (aContractor upTo: -1) reduce: exampleString .
	self assert: labelAfter equals: String empty . 
	
	
	
	