var isSquare = function (n) {
  if (n === -1) return false
  n = n ** 0.5
  return n - Math.floor(n) == 0
  // return 1 // fix me
}

const errorMsg = "error"
let Test = {
  assertEquals: function (result, answer, tip) {
    //
    console.log(result, answer)
    console.assert(result === answer, tip)
    console.log("-".repeat(20))
  },
}

Test.assertEquals(
  isSquare(-1),
  false,
  "-1: Negative numbers cannot be square numbers"
)
Test.assertEquals(isSquare(0), true, "0 is a square number (0 * 0)")
Test.assertEquals(isSquare(3), false, "3 is not a square number")
Test.assertEquals(isSquare(4), true, "4 is a square number (2 * 2)")
Test.assertEquals(isSquare(25), true, "25 is a square number (5 * 5)")
Test.assertEquals(isSquare(26), false, "26 is not a square number")
// it("should work for some examples", function () {});
const describe = function () {}
describe("isSquare", function () {})
