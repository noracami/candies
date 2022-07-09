// 編號：005
// 程式語言：JavaScript
// 題目：完成函數的內容，把傳進去的數字的每個位數平方之後組合在一起
// 範例：

function squareDigits(num) {
  // 實作寫在這裡
  return Array.from(num.toString()) // 每位數字以陣列分別儲存後，
    .map((e) => Number.parseInt(e) ** 2) // 平方
    .join("") // 串接
  //.reduce((pre, cur) => `${pre}${cur}`) // 串接
  //.reduce((pre, cur) => pre + cur.toString(), "") // 以字串方式串接
} // {s: "str", n: "num"} s + n => 此時 n 會型別轉換成字串後相加

console.log(squareDigits(3212)) // 印出 9414
console.log(squareDigits(2112)) // 印出 4114
console.log(squareDigits(387)) // 印出 96449
