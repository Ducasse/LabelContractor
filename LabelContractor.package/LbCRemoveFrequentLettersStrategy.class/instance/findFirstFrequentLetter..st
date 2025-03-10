private
findFirstFrequentLetter: aString

	" return the index of the first frequent letter on the string 
	  if the string does not contain any frequent letters(or if an empty string), then 0 is returned"

	| index indexFreqLetter mostFrequentLetter currentLetter |
	index := self keepFirstLetterAndStartAtSecondOne.
	mostFrequentLetter := 0.
	indexFreqLetter := 0.
	[ index <= aString size ] whileTrue: [
		currentLetter := self letterFrequency:
			                 (aString copyFrom: index to: index).
		currentLetter > mostFrequentLetter ifTrue: [ 
			mostFrequentLetter := currentLetter.
			indexFreqLetter := index ].
		index := index + 1 ].
	^ indexFreqLetter