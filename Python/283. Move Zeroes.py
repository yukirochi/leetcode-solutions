class Solution(object):
    def moveZeroes(self, nums):
        
        for index in range(len(nums)- 1, -1, -1):
            if nums[index] == 0:
                nums.pop(index)
                nums.append(0)
        
        return nums