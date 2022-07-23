// 編號：006
// 程式語言：JavaScript
// 題目：找出在數字陣列裡跟其它元素不一樣的值
// 範例：

function findDifferent(numbers) {
  // 實作寫在這裡
  const stack = numbers.splice(0, 1)
  let foundTwoNumber = false
  while (numbers.length) {
    stack.unshift(numbers.shift())
    if (foundTwoNumber) {
      if (stack[0] !== stack[1]) {
        return stack[1]
      } else {
        return stack[2]
      }
    } else if (stack[0] !== stack[1]) {
      if (stack.length > 2) {
        return stack[0]
      } else {
        foundTwoNumber = true
        continue
      }
    }
  }
  return `Can't find different number.`
}

console.log(findDifferent([1, 1, 1, 1, 3, 1, 1, 1])) // 印出 3
console.log(findDifferent([2, 2, 2, 4, 2, 2])) // 印出 4
console.log(findDifferent([8, 3, 3, 3, 3, 3, 3, 3])) // 印出 8
