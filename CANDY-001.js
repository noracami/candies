// 編號：CANDY-001
// 程式語言：JavaScript
// 題目：找出陣列裡最小的兩個值的總和
// 例如：
//   [15, 28, 4, 2, 43] 印出 6
//   [23, 71, 33, 82, 1] 印出 24

function sumOfSmallestValues(arr) {
  // 實作程式碼寫在這裡
  let min = arr.reduce((pre, cur) => pre < cur ? pre : cur)
  arr.splice(arr.indexOf(min), 1)
  let biggerThanMin = arr.reduce((pre, cur) => pre < cur ? pre : cur)
  return min + biggerThanMin
}

const list1 = [19, 5, 42, 2, 77]
const list2 = [23, 15, 59, 4, 17]

console.log(sumOfSmallestValues(list1)) // 印出 7
console.log(sumOfSmallestValues(list2)) // 印出 19

console.log(list1) // [ 19, 5, 42, 77 ] <= 陣列被修改了