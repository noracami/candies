// 編號：CANDY-020
// 程式語言：JavaScript
// 題目：檢查字串的 x 跟 o 的數量是不是一樣多，不分大小寫

function xxoo(str) {
  // 實作寫在這裡
  return str.match(/o/gi)?.length === str.match(/x/gi)?.length
  // g -> global -> search 1+ times
  // i -> Case-insensitive
  // const result = {}
  // result["o"] = str.match(/o/gi)?.length // ?? 0
  // result["x"] = str.match(/x/gi)?.length // ?? 0
  // // return [result["o"] === result["x"], result["o"], result["x"]]
  // return result["o"] === result["x"]
}

console.log(xxoo("ooxx")) // true
console.log(xxoo("xxoo")) // true
console.log(xxoo("xxooo")) // false
console.log(xxoo("xoox")) // true
console.log(xxoo("ooAA")) // false
console.log(xxoo("xoXoA")) // true
