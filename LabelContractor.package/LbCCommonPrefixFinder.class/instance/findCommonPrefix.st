finding/searching
findCommonPrefix
	"Find the common prefix between all the strings.
	Limit of the algo: cannot find the common prefix if only a majority of the strings contain the same prefix(see second example)."

	"LbCCommonPrefixFinder new collectionOfString: { 'SWFirstExample'. 'SWSecondExample'. 'SWThird' } >>> 'SW'"

	"LbCCommonPrefixFinder new collectionOfString: { 'SWFirstExample'. 'SWSecondExample'. 'somethingDifferent'} >>> ''"

	| minSize result current |
	result := String new.
	minSize := self class findMinLength: collectionOfString.
	1 to: minSize do: [ :i | 
		current := collectionOfString first at: i.
		1 to: collectionOfString size do: [ :j | 
			((collectionOfString at: j) at: i) ~= current ifTrue: [ ^ result ] ].
		result := result , current asString ].
	^ result