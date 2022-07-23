// 編號：CANDY-011
// 程式語言：JavaScript
// 題目：找出一個數字陣列裡，出現奇數次數的數字
// 範例：[1, 1, 0]，`0` 只有出現 1 次
//      [5, 5, 8, 8, 8, 4, 4]，`8` 出現了 3  次

function findOddElm(numbers) {
  // 實作寫在這裡
  // a ^ b
  // 會將 a 與 b 先轉成 2 進位後，每一位進行 XOR 運算，
  // 又 XOR 符合交換律(a ^ b = b ^ a)
  // 與結合律( a ^ (b ^ c) = (a ^ b) ^ c)，因此對整個陣列
  // 元素以 XOR 運算，將相同數字倆倆運算得 a ^ b = 0，
  // 最後會留下出現奇數次的數字。
  return numbers.reduce((pre, cur) => pre ^ cur)
}

console.log(findOddElm([1, 1, 2])) // 印出 2
console.log(findOddElm([5, 4, 2, 1, 5, 4, 2, 10, 10])) // 印出 1
console.log(findOddElm([0, 1, 0, 1, 0])) // 印出 0
console.log(findOddElm([1, 1, 2, -2, 5, 2, -1, -2, 5])) // 印出 -1
console.log(findOddElm([20, 2, 2, 3, 3, 5, 5, 4, 20, 4, 5])) // 印出 5
