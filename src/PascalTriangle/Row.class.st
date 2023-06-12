Class {
	#name : #Row,
	#superclass : #Object,
	#instVars : [
		'values'
	],
	#category : #PascalTriangle
}

{ #category : #'instance creation' }
Row class >> createOnce: items [

	| newRow |
	newRow := self new.

	items do: [ :item | newRow add: item ].

	^ newRow
]

{ #category : #'instance creation' }
Row class >> with: item [

	| newRow |
	newRow := Row new.

	newRow add: item.

	^ newRow
]

{ #category : #comparing }
Row >> <= aRow [

	^ values size <= aRow render size
]

{ #category : #comparing }
Row >> = aRow [

	^ values = aRow render
]

{ #category : #adding }
Row >> add: item [ 
	values add: item
]

{ #category : #rendering }
Row >> at: index [

	^ values at: index
]

{ #category : #initialization }
Row >> initialize [ 

	values := OrderedCollection new
]

{ #category : #rendering }
Row >> render [

	^ values 
]

{ #category : #rendering }
Row >> sum [

	^ values sum
]
