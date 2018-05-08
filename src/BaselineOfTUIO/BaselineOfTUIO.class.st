Class {
	#name : #BaselineOfTUIO,
	#superclass : #BaselineOf,
	#category : #BaselineOfTUIO
}

{ #category : #baselines }
BaselineOfTUIO >> baseline: spec [
	<baseline>
	spec
		baseline: 'OSC'
		with: [ spec repository: 'github://RMODINRIA/OSC' ].
	spec
		for: #pharo
		do: [ 
			spec
				package: 'TUIO-Tests'
				with: [ spec requires: #('TUIO') ].
			spec
				package: 'TUIO'
				with: [ spec requires: #('OSC') ] ]
]