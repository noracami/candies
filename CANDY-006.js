// 編號：006
// 程式語言：JavaScript
// 題目：找出在數字陣列裡跟其它元素不一樣的值
// 範例：

function findDifferent(numbers) {
  // 實作寫在這裡
  let theNumber = numbers.pop() // 0. 宣告變數
  let theOther = false
  for (e of numbers) {
    if (theOther !== false) {
      // 2. 判斷下個元素和誰不一樣，回傳它
      return theNumber ? e !== theNumber : theOther
    }
    if (e !== theNumber) {
      theOther = e // 1. 找到新元素後，記錄起來
    }
  }
}

console.log(findDifferent([1, 1, 1, 1, 3, 1, 1, 1])) // 印出 3
console.log(findDifferent([2, 2, 2, 4, 2, 2])) // 印出 4
console.log(findDifferent([8, 3, 3, 3, 3, 3, 3, 3])) // 印出 8
