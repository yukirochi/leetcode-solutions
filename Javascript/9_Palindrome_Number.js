/**
 * @param {number} x
 * @return {boolean}
 */
var isPalindrome = function(x) {
    let xs = x.toString()
    let reverse = ""
    for(let i = xs.length - 1; i >= 0; i--){
         reverse +=  xs[i];
         }

   return xs === reverse
};