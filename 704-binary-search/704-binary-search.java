class Solution {
    public int search(int[] nums, int target) {
        int min = 0;
        int max = (nums.length) - 1;
        int mid = (min + max)/2;
        while(min <= max){
            if (nums[mid] == target){
                return mid;
            }
            else if (nums[mid] > target) {
                max = mid-1;
            }
            else{
                min = mid+1;
            }
            mid = (min + max)/2;
        }
        return -1;
    }
}