// 編號：CANDY-018
// 程式語言：JavaScript
// 題目：實作一個可以印出隨機整數的函數

//Math.random() return x , 0 <= x < 1
function randomNumber(min, max) {
  const start = min
  const end = max ?? 0
  return Math.floor(Math.random() * (end - start)) + start

  // 1
  return Math.floor(
    Math.random() * Math.abs(min - (max ?? 0)) + (max ? min : 0)
  )

  // 2
  return Math.floor(
    max ? Math.random() * (max - min) + min : Math.random() * min
  )

  // 3
  return max ?? false
    ? Math.floor(Math.random() * (max - min) + min)
    : Math.floor(Math.random() * min)

  // 4
  if (max) {
    return Math.floor(Math.random() * (max - min) + min)
  } else {
    return Math.floor(Math.random() * min)
  }
}

console.log([...Array(100)].map((x) => randomNumber(50)))
// console.log(randomNumber(50)) // 隨機印出 0 ~ 49 之間的任何一個數字
// console.log(randomNumber(5, 30)) // 隨機印出 5 ~ 29 之間的任何一個數字
