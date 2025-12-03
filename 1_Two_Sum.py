
class Solution(object):
    def twoSum(self, nums, target):
        """
        :type nums: List[int]
        :type target: int
        :rtype: List[int]
        """ 
    
        for x in range(len(nums) - 1):
            if nums[x] + nums[x + 1 ] == target:
                return [x, x+1] 
            