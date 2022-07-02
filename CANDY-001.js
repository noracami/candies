// 編號：CANDY-001
// 程式語言：JavaScript
// 題目：找出陣列裡最小的兩個值的總和
// 例如：
//   [15, 28, 4, 2, 43] 印出 6
//   [23, 71, 33, 82, 1] 印出 24

function sumOfSmallestValues(arr) {
  /*
    用 reduce 方法遍歷 arr 所有元素，傳入起始值 smaller, bigger 並用 hash 包起來。

    找出最小值的方法，就是像從一條路的一端(起點)出發，看到石頭撿起來比較，如果比自己的石頭小，就把原本的丟掉，保留新的，到終點時，手上就會是最小的。
    而要找出次小值，就是在手上拿兩顆石頭(A)，撿起新的石頭時(B)，**先跟自己較大的石頭比較**(C)，如果比較小，就交換(D)，到終點時，手上就會有兩顆最小的石頭了。
    注意上面執行 (C) 時，為了區分最小跟次小，(D) 還會檢查剛才新撿起的石頭是不是最小。
    因此每一輪做的事情：
    
    撿起石頭 : current_value
    
    比較石頭與手上目前較大的石頭(次小值, bigger)的大小 :
    
      如果比較小，就交換 :
        if(bigger > current_value) {
          bigger = current_value
        }

        接著如果新的這顆石頭比最小的石頭還小，兩者交換 : 
          if (smaller > current_value) {
            bigger = smaller
            smaller = current_value
          }

    全部元素檢查完後，用變數 result 承接 reduce 的回傳值(陣列最小的兩個值)
    回傳 result 內數字總和。
  */
  
  const result = arr.reduce(function (pre, current_value) {
    // console.log(`> smaller = ${pre.smaller}, bigger = ${pre.bigger}, current_value = ${current_value}`);
    if (pre.bigger > current_value) {    // 若當前值小於次小值，
      pre.bigger = current_value         // 更新次小值。
      if (pre.smaller > current_value) { // 又如果當前值小於最小值
        pre.bigger = pre.smaller         // 更新次小值、
        pre.smaller = current_value      // 更新最小值。
      }
    }
    // console.log(`> smaller = ${pre.smaller}, bigger = ${pre.bigger}, current_value = ${current_value}`);
    return pre
  }, {"smaller" : Infinity, "bigger" : Infinity})
  return result.smaller + result.bigger
}

const list1 = [19, 5, 42, 2, 77]
const list2 = [23, 15, 59, 4, 17]

console.log(sumOfSmallestValues(list1)) // 印出 7
console.log(sumOfSmallestValues(list2)) // 印出 19