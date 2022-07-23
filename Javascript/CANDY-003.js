// 編號：003
// 程式語言：JavaScript
// 題目：完成函數的內容，把陣列裡的 0 都移到最後面
// 範例：

let list = [false, 1, 0, -1, 2, 0, 1, 3, "a"]

function moveZerosToEnd(arr) {
  // 程式碼寫在這裡
  /*
     result : ..., [e], ..., [a], [0], [0]
                    ↑         ↑    ↑    ↑
                  last       1st  1st  2nd
                   !0        !0    0    0
     將陣列從終點開始取，一個一個填到新陣列起點，即會跟
     原本陣列排列相同；
     並將取到的丟到新陣列終點，即完成排序。
  */
  const result = []
  for (let i = arr.length - 1; i >= 0; i--) {
    if (arr[i] === 0) {
      result.push(arr[i])
    } else {
      result.unshift(arr[i])
    }
  }
  return result
}

let result = moveZerosToEnd(list)
console.log(result)  // 印出 [false, 1, -1, 2, 1, 3, "a", 0, 0]