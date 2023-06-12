Class {
	#name : #TriangleTest,
	#superclass : #TestCase,
	#category : #'PascalTriangle-Tests'
}

{ #category : #tests }
TriangleTest >> testGenerate1stRow [

	| sut expected |
	sut := Triangle new.

	expected := SortedCollection newFromArray: {
	Row createOnce: #( 1 ) } .
	


	self assert: (sut generateRow: 1) equals: expected
]

{ #category : #tests }
TriangleTest >> testGenerate2ndRow [

	| sut expected |
	sut := Triangle new.

	expected := SortedCollection newFromArray:
		            { (Row createOnce: #( 1 )).(Row createOnce: #( 1 1 )) }.

	self assert: (sut generateRow: 2) equals: expected
]

{ #category : #tests }
TriangleTest >> testGenerate3rdRow [

	| sut expected |
	sut := Triangle new.

	expected := SortedCollection newFromArray: {
			            (Row createOnce: #( 1 )).
			            (Row createOnce: #( 1 1 )).
			            (Row createOnce: #( 1 2 1 )) }.

	self assert: (sut generateRow: 3) equals: expected
]

{ #category : #tests }
TriangleTest >> testGenerate4thRow [

	| sut expected |
	sut := Triangle new.
	
	expected := SortedCollection newFromArray: {
			            (Row createOnce: #( 1 )).
			            (Row createOnce: #( 1 1 )).
			            (Row createOnce: #( 1 2 1 )).Row createOnce: #( 1 3 3 1 ) }.



	self assert: (sut generateRow: 4) equals: expected
]

{ #category : #tests }
TriangleTest >> testGenerate5thRow [

	| sut expected |
	sut := Triangle new.

	expected := SortedCollection newFromArray: {
			            (Row createOnce: #( 1 )).
			            (Row createOnce: #( 1 1 )).
			            (Row createOnce: #( 1 2 1 )).
			            (Row createOnce: #( 1 3 3 1 )).
			  (Row createOnce: #( 1 4 6 4 1 )) }.



	self assert: (sut generateRow: 5) equals: expected
]
