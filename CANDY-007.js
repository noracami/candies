// 編號：007
// 程式語言：JavaScript
// 題目：在某個數字陣列裡，可能藏有某個不合群的奇數或偶數，試著找出它！
// 範例：

function findSomeDifferent(numbers) {
  // 實作寫在這裡
  // turns to (1 or 0) array
  const binaryList = numbers.map((e) => Math.sqrt(e * e) % 2)
  const sumOfList = binaryList.reduce((pre, cur) => pre + cur)
  let goal
  if (sumOfList === 1) {
    // means only one 1 and some 0s
    goal = 1
  } else {
    // otherwise
    goal = 0
  }
  for (i = 0; i < binaryList.length; i++) {
    if (binaryList[i] === goal) {
      return numbers[i]
    }
  }
}

console.log(findSomeDifferent([2, 4, 0, 100, 4, 11, 2602, 36])) // 印出 11
console.log(findSomeDifferent([160, 3, 1719, 19, 11, 13, -21])) // 印出 160
