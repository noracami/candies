// 編號：006
// 程式語言：JavaScript
// 題目：找出在數字陣列裡跟其它元素不一樣的值
// 範例：

function findDifferent(numbers) {
  // 實作寫在這裡
  let a = numbers.pop() // 0. 宣告變數
  let b = false
  for (e of numbers) {
    if (b) {
      // 2. 下次遇到的元素的值，一定是a不然就是b
      return e ^ a ^ b
    } // 3. XOR運算，若 A = B 則 A ^ B = 0，因此留下不一樣的值
    if (e !== a) {
      b = e // 1. 找到新元素後，記錄起來
    }
  }
}

console.log(findDifferent([1, 1, 1, 1, 3, 1, 1, 1])) // 印出 3
console.log(findDifferent([2, 2, 2, 4, 2, 2])) // 印出 4
console.log(findDifferent([8, 3, 3, 3, 3, 3, 3, 3])) // 印出 8
