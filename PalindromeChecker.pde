public void setup()
  {
    String lines[] = {"test", "rotator", "rewriter", "nurses run", "Madam I'm Adam!", "A Man! A Plan! A Canal! Panama!"};
    System.out.println("there are " + lines.length + " lines");
    for (int i=0; i < lines.length; i++) 
    {
      if(palindrome(lines[i])==true)
      {
        System.out.println(lines[i] + " IS a palindrome.");
      }
      else
      {
        System.out.println(lines[i] + " is NOT a palindrome.");
      }
    }
  }
  public boolean palindrome(String sWord)
  {
    sWord = noCapitals(sWord);
    sWord = noSpaces(sWord);
    sWord = onlyLetters(sWord);
   if(sWord.equals(reverse(sWord)))
    return true;
  return false;  
}

public String reverse(String sWord) {
  String news = new String ("");
  for(int i = sWord.length() - 1; i >= 0; i--) {
    if(i != sWord.length())
      news = news + sWord.substring(i, i+1);
    else
      news = news + sWord.substring(i);
  }
  return news;
}

public String noCapitals(String sWord){
  return(sWord.toLowerCase());
}

public String noSpaces(String sWord){
  String newS = new String("");
  for(int i = 0; i <= sWord.length()-1; i++) {
    if(i != sWord.length()-1) {
      if(!sWord.substring(i,i+1).equals(" "))
        newS = newS + sWord.substring(i,i+1);
    } else {
      if(!sWord.substring(i).equals(" "))
        newS = newS + sWord.substring(i);
    }
  }
  return newS;
}

public String onlyLetters(String sString){
  String newS = new String("");
  for(int i = 0; i <= sString.length() - 1; i++)
    if(Character.isLetter(sString.charAt(i)) == true)
      if(sString.length() - 1 == i)
        newS = newS + sString.substring(i);
      else
        newS = newS + sString.substring(i, i+1);
  return newS;
}

  
}

