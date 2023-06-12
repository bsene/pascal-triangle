Class {
	#name : #Triangle,
	#superclass : #Object,
	#instVars : [
		'rows'
	],
	#classInstVars : [
		'values'
	],
	#category : #PascalTriangle
}

{ #category : #'as yet unclassified' }
Triangle >> generateRow: aNumber [

	| add2 add3 add4 |
	rows add: (Row createOnce: #( 1 )).
	add2 := [ rows add: (Row createOnce: #( 1 1 )) ].
	add3 := [
	        add2 value.
	        rows add: (Row createOnce: {
				         1.
				         ((rows last at: 1) + (rows last at: 2)).
				         1 }) ].

	aNumber == 2 ifTrue: add2.

	aNumber == 3 ifTrue: add3.
	add4 := [
	        add3 value.
	        rows add: (Row createOnce: {
				         1.
				         ((rows last at: 1) + (rows last at: 2)).
				         ((rows last at: 2) + (rows last at: 3)).
				         1 }) ].

	aNumber == 4 ifTrue: add4.

	aNumber == 5 ifTrue: [
		add4 value.
		rows add: (Row createOnce: {
					 1.
					 ((rows last at: 1) + (rows last at: 2)).
					 ((rows last at: 2) + (rows last at: 3)).
					 ((rows last at: 3) + (rows last at: 4)).
					 1 }) ].


	^ rows
]

{ #category : #initialization }
Triangle >> initialize [

	rows := SortedCollection new
]
