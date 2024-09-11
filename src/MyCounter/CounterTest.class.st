Class {
	#name : 'CounterTest',
	#superclass : 'TestCase',
	#category : 'MyCounter',
	#package : 'MyCounter'
}

{ #category : 'basic tests' }
CounterTest >> testCountIsSetAndRead [
	| c |
	c := Counter new.
	c count: 7.
	self assert: c count equals: 7
]

{ #category : 'tests' }
CounterTest >> testDecrementPositive [

	| c |
	c := Counter new.
	c count: 7.
	c decrement .
	self assert: c count equals: 6
]

{ #category : 'tests' }
CounterTest >> testDecrementnegative [

	| c |
	c := Counter new.
	c decrement .
	self assert: c count equals: 0
]

{ #category : 'tests' }
CounterTest >> testIncrement [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"

	| c |
	c := Counter new.
	c count: 7.
	c increment.
	self assert: c count equals: 8
]
