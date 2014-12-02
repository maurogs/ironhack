/*
   TODO LIST:
[""] ->  []
["carlos@iexpertos.com"] -> ["carlos@iexpertos.com"]
["@iexpertos.com"] -> []
["iexpertos.com@"] -> []
["carlos@iexpertos"] -> []
["car.los@iexpertos"] -> []
@@
@. 
["hola", "carlos@iexpertos.com"] -> ["carlos@iexpertos.com"]
*/


function filter(emailCandidates){
  if (emailCandidates.length == 0){
    return [];
  }
  return emailCandidates.filter(isValidEmail);
}

function isValidEmail(candidate){
  return candidate.indexOf("@") &&
         (candidate.indexOf(".") > 
           candidate.indexOf("@"));
}

describe("El filtro de emails", function(){
  it("ignores empty list", function(){
      expect(filter([])).toEqual([]);
  });
  it("adds emails to the resulting list", function(){
      expect(filter(["carlos@iexpertos.com"]))
        .toEqual(["carlos@iexpertos.com"]);
  });
  it("considers that valid emails contain dot after @", function(){
      expect(filter(["carlos@iexpertoscom"]))
        .toEqual([]);
      expect(filter(["ca.rlos@iexpertoscom"]))
        .toEqual([]);
  });  
  it("discards non-email words", function(){
      expect(filter(["hola", "carlos@iexpertos.com"]))
        .toEqual(["carlos@iexpertos.com"]);
  });
  xit("", function(){

  });
  xit("", function(){

  });
  xit("", function(){

  });    
}); 