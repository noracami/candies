// 編號：CANDY-001
// 程式語言：JavaScript
// 題目：找出陣列裡最小的兩個值的總和
// 例如：
//   [15, 28, 4, 2, 43] 印出 6
//   [23, 71, 33, 82, 1] 印出 24

function sumOfSmallestValues(arr) {
  let min = arr[0]            // 最小值，並以陣列第0項的值初始化
  let biggerThanMin = arr[1]  // 次小值，並以陣列第1項的值初始化
  let tmp = 0                 // 暫存用變數，用於交換前兩項用
  if (min > biggerThanMin) {  //
    tmp = min                 // 若最小值大於次小值，將兩者交換
    min = biggerThanMin       // 因之後迴圈會先比較次小值與當前
    biggerThanMin = tmp       // 值，故需確定最小值不大於次小值。
  }
  for (let i = 2; i < arr.length; i++) { // 從第2項開始逐項比較
    if (biggerThanMin > arr[i]) {  // 先比較次小值與當前值，若當
      biggerThanMin = arr[i]       // 前值較小則更新次小值，
      if (min > biggerThanMin) {   // 並接著比較新的次小值與最小
        tmp = min                  // 值，若次小值較小則兩者交換。
        min = biggerThanMin
        biggerThanMin = tmp
      }
    }
  }                                // 全部元素比較完畢，得到最小
  return min + biggerThanMin       // 值與次小值，回傳相加結果。
}

const list1 = [19, 5, 42, 2, 77]
const list2 = [23, 15, 59, 4, 17]

console.log(sumOfSmallestValues(list1)) // 印出 7
console.log(sumOfSmallestValues(list2)) // 印出 19