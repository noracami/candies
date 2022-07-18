// 編號：CANDY-015
// 程式語言：JavaScript
// 題目：把原本的字串拆解成 2 個字元一組，若不足 2 個字則補上底線
// 範例：
//      "abcdef" -> ['ab', 'cd', 'ef']
//      "abcdefg" -> ['ab', 'cd', 'ef', 'g_']

function splitString(str) {
  // 實作寫在這裡
  return str.length
    ? [...Array(Math.ceil(str.length / 2))].map((_, i) => {
        if (2 * i + 1 == str.length) {
          return `${str[2 * i]}_`
        } else {
          return `${str[2 * i]}${str[2 * i + 1]}`
        }
      })
    : []
}

console.log(splitString("abcdef")) // ["ab", "cd", "ef"]
console.log(splitString("abcdefg")) // ["ab", "cd", "ef", "g_"]
console.log(splitString("")) // []
