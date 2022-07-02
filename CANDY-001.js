// 編號：CANDY-001
// 程式語言：JavaScript
// 題目：找出陣列裡最小的兩個值的總和
// 例如：
//   [15, 28, 4, 2, 43] 印出 6
//   [23, 71, 33, 82, 1] 印出 24

function sumOfSmallestValues(arr) {
  /*
    用 reduce 方法遍歷 arr 所有元素，在 reduce 外初始化兩個變數記錄最小、次小值，
    並設為無限大。
    找出最小值的方法，就是像從一條路的一端(起點)出發，看到石頭撿起來比較，如果比自己
    的石頭小，就把原本的丟掉，保留新的，到終點時，手上就會是最小的。
    而要找出次小值，就是在手上拿兩顆石頭(A)，撿起新的石頭時(B)，**先跟自己較大的石頭比較**(C)，如果比較小，就交換(D)，到終點時，手上就會有兩顆最小的石頭了。
    注意上面執行 (C) 時，為了區分最小跟次小，(D) 還會檢查剛才新撿起的石頭是不是最小。
    因此每一輪做的事情：
    撿起石頭 : cur
    比較石頭與手上目前較大的石頭(次小值, pre)的大小 : boolean(pre > cur)
      如果比較小，就交換 :
      if(pre > cur) {
         bigger = cur
      }
        接著如果新的這顆石頭比最小的石頭還小，兩者交換 : 
        if (smaller > bigger) {
          pre = smaller
          smaller = bigger
        }
    標記好手上哪顆石頭是較大的，準備下一次比較 : return pre
  */
  
  let smaller = bigger = Infinity
  bigger = arr.reduce(function (pre, cur) {
    console.log(`> pre = ${pre}, cur = ${cur}, smaller = ${smaller}, bigger = ${bigger}`);
    if (pre > cur) {
      bigger = cur
      if (smaller > bigger) {
        pre = smaller
        smaller = bigger
      }
    }
    console.log(`> pre = ${pre}, cur = ${cur}, smaller = ${smaller}, bigger = ${bigger}`);
    return pre
  }, bigger)
  return smaller + bigger
}

const list1 = [19, 5, 42, 2, 77]
const list2 = [23, 15, 59, 4, 17]

console.log(sumOfSmallestValues(list1)) // 印出 7
console.log(sumOfSmallestValues(list2)) // 印出 19