Class {
	#name : #CounterTest,
	#superclass : #TestCase,
	#category : #MyCounter
}

{ #category : #tests }
CounterTest >> testCounterIsSetAndRead [

| c |
c:= Counter new.
c count: 6.
self assert: c count equals: 6
]

{ #category : #tests }
CounterTest >> testDncrement [

| c |
c:= Counter new.
c count: 6.
c decrement; decrement.
self assert: c count equals: 4
]

{ #category : #tests }
CounterTest >> testIncrement [

| c |
c:= Counter new.
c count: 6.
c increment; increment.
self assert: c count equals: 8
]

{ #category : #tests }
CounterTest >> testInitialize [ 

| c |
c:= Counter new.
self assert: c count equals: 0.
]

{ #category : #tests }
CounterTest >> testStartingAt6 [

| c |
c:= Counter startingAt: 6.
self assert: c count equals: 6
]
