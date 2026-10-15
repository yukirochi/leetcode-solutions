class Solution(object):
    def lengthOfLongestSubstring(self, s):
        """
        :type s: str
        :rtype: int
        """


        # if len(s) == 1:
        #     return 1
        left_pointer = 0
        sett = set()
        res = 0
        for r, n in enumerate(s):
            if n not in sett:
                sett.add(n)
            else:
                while n in sett:
                    sett.remove(s[left_pointer])
                    left_pointer += 1

                sett.add(n)
            res = max(res, len(sett))
        return res


        
                
        
        
