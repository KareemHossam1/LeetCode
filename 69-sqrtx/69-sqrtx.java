class Solution {
    public int mySqrt(int x) {
        int min = 0;
        int max = x;
        int mid = min + (max - min) / 2;
        long squared;
        while(min <= max){
            squared = (long) mid * (long) mid;
            if(squared == x){
                return mid;
            }
            else if (squared > x) {
                max = mid -1 ;
                mid = (min+max) / 2;
            }
            else {
                min = mid +1 ;
                mid = (min+max) / 2;
            }
        }
        return mid;
    }
}