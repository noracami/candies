// 編號：002
// 程式語言：JavaScript
// 題目：請寫一小段程式，印出連續陣列裡缺少的字元
// 範例：

const chars1 = ["a", "b", "c", "d", "f", "g"] 
const chars2 = ["O", "Q", "R", "S"]

function missingChar(chars) {
  // 實作寫在這裡
  // assume missingChar not at begin/end and only 1 missingChar in given string
  chars = chars.map(x => x.charCodeAt(0)) // trans char to utf-16 code
  /*
   *  if missing happen, their diff would be 2 rather than 1.
   *  so use reduce to find the gap.
   *
   *  a . b . c . d . . . f . g
   *  97  98  99  100     102 103
   *    1   1   1      2     1
   *  
   *  than trans utf-16 to string.
   */
  
  chars.reduce(function (pre, cur) {
    // console.log(`cur:${cur} - pre:${pre} = ${cur - pre}`);
    if (cur - pre === 2) {
      console.log(String.fromCharCode(cur-1));
    }
    return cur
  }, chars.shift()) // pop first element as init "pre" value.
}

console.log(missingChar(chars1)); // 印出 e
console.log(missingChar(chars2)); // 印出 P

// 提示：
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/charCodeAt
