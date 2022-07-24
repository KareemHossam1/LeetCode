class Solution {
    public boolean isSubsequence(String s, String t) {
        int head =0;
        if(s.length() > t.length()){
            return false;
        }
        for (int i = 0; i < s.length(); i++) {
            while(s.charAt(i) != t.charAt(head)){
                head++;
                if (head == t.length()){
                    return false;
                }
            }
            head++;
            if(i == s.length()-1){
                return true;
            }
            if (head == t.length()){
                return false;
            }
        }
        return true;
    }
}