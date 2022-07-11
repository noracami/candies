// 編號：008
// 程式語言：JavaScript
// 題目：傳入一字串，計算得分最高的字
//      英文字母 a 得 1 分、b 得 2 分、c 得 3 分，以此類推。
//      所有傳入的字都是小寫。

function highestScoreWord(input) {
  // 實作寫在這裡
  let result = ""
  const wordList = input.split(" ").map((word) => {
    // 1. 對傳入字串input切成陣列後，對每一單字做處理，稍後回傳
    const score = Array.from(word).reduce((pre, cur) => {
      // 2. 將單字轉為陣列後，用reduce將每一字元轉成分數並加總
      //    儲存至 score
      return pre + cur.charCodeAt(0) - 96
    }, 0)
    // 3. 將目前處理單字與它的分數組成物件後回傳儲存至 wordList
    return { word, score }
    // equal return {"word": word, "score": score}
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
