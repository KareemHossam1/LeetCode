class Solution {
    public int search(int[] nums, int target) {
        if(nums == null || nums.length == 0){
            return -1;
        }
        int left = 0, right = nums.length-1, mid = 0, last = nums.length-1;
        if(nums[left] > nums[right]){
            while(left <= right){
                mid = left + (right - left)/2;
                if(nums[mid] > nums[mid+1]){
                    mid +=1;
                    break;
                }
                else if(nums[mid] > nums[last]){
                    left = mid + 1;
                }
                else{
                    right = mid -1;
                }
            }
        }
        if(target > nums[last]){
            left = 0;
            right = mid-1;
        }
        else{
            left = mid;
            right = last;
        }
        while(left <= right){
            mid = left + (right - left)/2;
            if(nums[mid] == target){
                return mid;
            }
            else if(nums[mid] > target){
                right = mid -1;
            }
            else{
                left = mid + 1;
            }
        }
        return -1;
    }
}