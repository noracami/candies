// 編號：CANDY-016
// 程式語言：JavaScript
// 題目：把原本 snake_case 的字轉換成 camelCase 格式
// 範例："hello_world" -> "helloWorld"

function toCamelCase(str) {
  // 實作寫在這裡
  // 比對"_"及隨後一個字元，替換成大寫
  const regex = /_(\w)/g
  function replacer(match, firstWord, offset, string) {
    // console.log(match) //The matched substring.
    // console.log(firstWord) //The nth string found by a parenthesized capture group
    // console.log(offset) //The offset of the matched substring within the whole string being examined.
    // console.log(string) //The whole string being examined
    return firstWord.toUpperCase()
  }
  return str.replace(regex, replacer)
  // return str.replace(regex, "$&"[1].toUpperCase()) // = "&"
}
console.log(toCamelCase("book")) // book
console.log(toCamelCase("book_store")) // bookStore
console.log(toCamelCase("get_good_score")) // getGoodScore

/*

match 抓出需要替換的字串
用 `()` 或 `?<name>` 方式記錄隨後需要用到的值
而為了使用`.toUpperCase()`，必須先宣告函式來接收比對結果，再回傳給`replace()`處理。
(如直接在`replace()`內以匿名函式執行，會因為`"$&"`先解析成字串，而無法得到比對結果)
ref : https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/replace#using_an_inline_function_that_modifies_the_matched_characters

*/
