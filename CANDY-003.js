// 編號：003
// 程式語言：JavaScript
// 題目：完成函數的內容，把陣列裡的 0 都移到最後面
// 範例：

let list = [false, 1, 0, -1, 2, 0, 1, 3, "a"]

function moveZerosToEnd(arr) {
  // 程式碼寫在這裡
  const result = [[], []] // 建兩個陣列分別儲存0與0以外的值
  for (const e of arr) {
    if(e !== 0) {
      result[0].push(e)
    }
    else {
      result[1].push(e)
    }
  }
  return result.flat(1) // 合併陣列
}

let result = moveZerosToEnd(list)
console.log(result)  // 印出 [false, 1, -1, 2, 1, 3, "a", 0, 0]