/**
 * @param {number[]} arr
 * @param {Function} fn
 * @return {number[]}
 */
var map = function(arr, fn) {
    let res = []
    arr.forEach((items, index) =>{
       res.push(fn(items, index))
    })

     return res
};