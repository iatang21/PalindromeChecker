public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String result = new String();
  for(int i = 0; i < word.length(); i++)
    if(Character.isLetter(word.charAt(i)))
      result = result + word.substring(i,i+1);
    result = result.toLowerCase();
  return result.equals(reverse(result));
}
public String reverse(String str)
{
   
    int last = str.length()-1;
   String rev = "";
   for(int i=last; i>=0; i--){
     rev = rev + str.substring(i,i+1);
   }
   return rev;
}


