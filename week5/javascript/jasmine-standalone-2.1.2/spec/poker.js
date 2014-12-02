
/*
   TODO LIST:

Input -> Output
f(['1'], ['2']) 
       -> "Player2 wins 1 to 0" 
f(['1'], ['1']) 
       -> "Tie"
f(['2'], ['1']) 
       -> "Player1 wins 1 to 0"
f([''], ['']) 
       -> throw Error('Invalid input')
f(['1'], ['1', '2']) 
       -> throw Error('Invalid input')
f(['9', '6'], ['J', 'Q']) 
       -> "Player2 wins 2 to 0"
f(['9', '6'], ['5', 'Q']) 
       -> "Tie"
f(['9', '6'], ['9', 'Q']) 
       -> "Player2 wins 1 to 0"
f(['9', '6'], ['9', 'Q']) 
       -> "Player2 wins 1 to 0"
f(['J', 'J', 'J', 'J', 'J'], 
  ['J', 'J', 'J', 'J', 'J']) 
       -> "Tie"
*/



var CardGame = {};
(function(ns){
	ns.whoWins = function(hand1, hand2){
		var score1 = 0;
		var score2 = 0;

		validateGame(hand1, hand2);
		calculateScores();
		return displayScore(score1, score2);
		
		function calculateScores(){
			for(var i=0, len = hand1.length; i < len; i++ ){
				if (valueOf(hand2[i])  > valueOf(hand1[i]) ){
					score2++;
				} else if (valueOf(hand1[i]) > valueOf(hand2[i]) ){
					score1++;
				}		
			}
		}
	};
	
	function valueOf(card){
   	    return ['1','2','3','4','5','6','7','8','9','J','Q','K'].indexOf(card);
	}
    function validateGame(hand1, hand2){
		if (containsInvalidCard(hand1) || 
			containsInvalidCard(hand2) ||
		    handsHaveDifferentSize(hand1, hand2)) 
		{
				throw 'Invalid game, wrong cards';				
		}
    }
    function containsInvalidCard(hand){
		for (var i=0, len = hand.length; i < len; i++ ){
			if (valueOf(hand[i]) == -1){
				return true;
			}
		}
		return false;
	}
    function handsHaveDifferentSize(hand1, hand2){
    	return hand1.length != hand2.length;
    }
	function displayScore(score1, score2){
		if (score2 > score1){
			return "Player2 wins " + score2 +" to " + score1;
		} else if (score1 > score2){
			return "Player1 wins " + score1 +" to " + score2;
		} else {
			return "Tie";
		} 
	}
	
}(CardGame));




