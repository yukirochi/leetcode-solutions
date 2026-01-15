class Solution(object):
    def plusOne(self, digits):
        """
        :type digits: List[int]
        :rtype: List[int]
        """

        # convert each digit to str then combine then convert to int and add 1
        compute = int(''.join(map(str, digits))) + 1
        
        # convert the restult to str and loop each making a list and converting it back to int
        return [int(x) for x in str(compute)]


