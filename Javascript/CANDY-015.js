// 編號：CANDY-015
// 程式語言：JavaScript
// 題目：把原本的字串拆解成 2 個字元一組，若不足 2 個字則補上底線
// 範例：
//      "abcdef" -> ['ab', 'cd', 'ef']
//      "abcdefg" -> ['ab', 'cd', 'ef', 'g_']

function splitString(str) {
  const myStr = `${str}` + (str.length & 1 ? "_" : "")
  return [...Array(myStr.length / 2)].map(
    (_, i) => `${myStr[2 * i]}${myStr[2 * i + 1]}`
  )
}
// 實作寫在這裡

// return [...Array(Math.ceil(str.length / 2))].map((_, i) => {
//   return (
//     `${str[2 * i]}` + (2 * i + 1 == str.length ? `_` : `${str[2 * i + 1]}`)
//   )
// })

console.log(splitString("abcdef")) // ["ab", "cd", "ef"]
console.log(splitString("abcdefg")) // ["ab", "cd", "ef", "g_"]
console.log(splitString("")) // []
