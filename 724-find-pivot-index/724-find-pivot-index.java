class Solution {
    public int pivotIndex(int[] nums) {
        int total=0, left = 0;
        for(int num: nums){
            total += num;
        }
        for (int i = 0; i < nums.length; i++) {
            if(total - nums[i] - left == left){
                return i;
            }
            left += nums[i];
        }
        return -1;
    }
}