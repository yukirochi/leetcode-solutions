/**
 * @param {number[]} arr
 * @param {Function} fn
 * @return {number[]}
 */
var filter = function (arr, fn) {
  let cont = [];
  arr.forEach((ar, index) => {
    if (fn(ar, index)) {
      cont.push(ar);
    }
  });

  return cont;
};
