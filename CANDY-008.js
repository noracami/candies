// 編號：008
// 程式語言：JavaScript
// 題目：傳入一字串，計算得分最高的字
//      英文字母 a 得 1 分、b 得 2 分、c 得 3 分，以此類推。
//      所有傳入的字都是小寫。

function highestScoreWord(input) {
  // 實作寫在這裡
  let result = ""
  const wordList = input.split(" ").map((word) => {
    const score = Array.from(word).reduce((pre, cur) => {
      return pre + cur.charCodeAt(0) - 96
    }, 0)
    return { word, score }
  })
  result = wordList.reduce((pre, cur) => {
    if (pre.score > cur.score) {
      return pre
    } else {
      return cur
    }
  }).word
  return result
}

console.log(highestScoreWord("lorem ipsum dolor sit amet")) // 印出 ipsum
console.log(highestScoreWord("heyn i need a rubygem up to build this")) // 印出 rubygem
console.log(highestScoreWord("in time machine there are some bugs")) // 印出 there
