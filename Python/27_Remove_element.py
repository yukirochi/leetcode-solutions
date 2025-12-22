class Solution(object):
    def removeElement(self, nums, val):
        """
        :type nums: List[int]
        :type val: int
        :rtype: int
        """
        for x in range(len(nums) - 1, - 1, -1):
            if(nums[x] == val):
                nums.remove(val)