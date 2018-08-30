shuffle <- function(deck) {
    deck <- deck[sample(nrow(deck)),]
    rownames(deck) <- 1:nrow(deck)
    deck
}

generate_deck <- function(numberOfJokers = 0) {
    suits <- c("C", "D", "H", "S")
    deck <- data.frame(rep(1:13, 4), as.character(suits), stringsAsFactors=FALSE)
    names(deck) <- c("value", "suit") 

   if (numberOfJokers > 0) {
       for (i in 1:numberOfJokers) {
	    deck <- rbind(deck, c("0", "Joker"))
	}
   }
   deck$suit <- as.factor(deck$suit)
   deck
}

hand <- function(deck, size = 5) {
    head(deck, size)
}

pokerrank <- function(cards) {
# based https://en.wikipedia.org/wiki/List_of_poker_hands
# currently ignoring jokers

	values <- sort(h$value)

#	check for empty hand
    	if (length(cards) <= 1) { return(9) }


#	check for "Five of a kind"
	for (i in 2:values) {
	    if (values[i] != values[i-1]) { 
		break
	    }
	    return(0)
	}

#	check for "Straight flush"
#	check for "Four of a kind"
#	check for "Full House"
#	check for "Flush"
#	check for "Straight"
#	check for "Three of a kind"
#	check for "Two pair"

#	check for "One pair"
	for (i in 2:values) {
	    if (values[i] == values[i-1]) { return(8) }
	}
}




