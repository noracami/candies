// 編號：007
// 程式語言：JavaScript
// 題目：在某個數字陣列裡，可能藏有某個不合群的奇數或偶數，試著找出它！
// 範例：

function findSomeDifferent(numbers) {
  // 實作寫在這裡
  const nL = numbers.length
  let result = "not find different number."
  for (let i = 0; i < nL; i++) {
    const currentNum = Math.abs(numbers[i] % 2)
    const beforeNum = Math.abs(numbers[(i - 1 + nL) % nL] % 2)
    const afterNum = Math.abs(numbers[(i + 1 + nL) % nL] % 2)
    if (currentNum !== beforeNum && currentNum !== afterNum) {
      result = numbers[i]
    }
  }
  return result
}

console.log(findSomeDifferent([2, 4, 0, 100, 4, 11, 2602, 36])) // 印出 11
console.log(findSomeDifferent([160, 3, 1719, 19, 11, 13, -21])) // 印出 160
