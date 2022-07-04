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
   *  if missing happen, their diff would not be 1.
   *  so we can find the gap.
   *
   *  a . b . c . d . . . f . g
   *  97  98  99  100     102 103
   *    1   1   1      2     1
   *  
   *  then trans utf-16 to string.
   */

  for (let i = 1; i < chars.length; i++) {
    if (chars[i] - chars[i-1] !== 1) {
      return String.fromCharCode(chars[i] - 1)
    }
  }
  return "Not find the missingChar."
}

console.log(missingChar(chars1)); // 印出 e
console.log(missingChar(chars2)); // 印出 P

// 提示：
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/charCodeAt
