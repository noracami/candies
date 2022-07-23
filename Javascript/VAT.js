function isValidVatNumber(vat) {
  // 實作寫這裡
  // const validFactor = 10
  const validFactor = 5
  const validArr = [..."12121241"]
  let sumOfVat = [...vat]
    .map((element, index) => {
      element = Number(element) * Number(validArr[index])
      if (element >= 10) {
        return (element % 10) + (element - (element % 10)) / 10
      } else {
        return element
      }
    })
    .reduce((pre, cur) => pre + cur)
  if (vat[6] !== "7") {
    return sumOfVat % validFactor == 0
  } else {
    return (
      (sumOfVat - 10) % validFactor == 0 || (sumOfVat - 9) % validFactor == 0
    )
  }
}

console.log(isValidVatNumber("88117125")) // true
console.log(isValidVatNumber("53212539")) // true
console.log(isValidVatNumber("88117126")) // false
