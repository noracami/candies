# @param {String[]} positive_feedback
# @param {String[]} negative_feedback
# @param {String[]} report
# @param {Integer[]} student_id
# @param {Integer} k
# @return {Integer[]}
def top_students(positive_feedback, negative_feedback, report, student_id, k)
  points = {}
  positive_feedback.each { |word| points[word] = 3 }
  negative_feedback.each { |word| points[word] = -1 }

  id = -> h { h[:id] }

  student_id.map.with_index { |id, idx|
    pts = report[idx].split.map { |word| points[word] || 0 }.sum
    {id:, pts:}
  }
  .sort { |a, b| b[:pts] <=> a[:pts] }
  .chunk_while { |i, j| i[:pts] == j[:pts] }
  .flat_map { |chunk| chunk.sort_by(&id) }
  .map(&id)
  .first k
end

TestCase = [
  [
    ["smart","brilliant","studious"],
    ["not"],
    ["this student is studious","the student is smart"],
    [1,2],
    2
  ],
  [
    ["smart","brilliant","studious"],
    ["not"],
    ["this student is not studious","the student is smart"],
    [1,2],
    2
  ],
  [
    ["xrezzxgdvg","bcgx","wcfzmfosr"],
    ["qyouhus","ukou","eirhfbt","qciw","for"],
    ["bcgx bcgx eirhfbt kvcrym bcgx cxzs eirhfbt wcfzmfosr v qciw","bcgx xrezzxgdvg bcgx xrezzxgdvg wcfzmfosr chap qyouhus biyt wcfzmfosr qciw","xrezzxgdvg wcfzmfosr ukou qcr clnj xrezzxgdvg gvtkvb qciw hi wcfzmfosr","for for mnxpqrdth bcgx bcgx qciw wcfzmfosr lspvgjvk wcfzmfosr eirhfbt","loxyg bcgx jwdesdu xrezzxgdvg wcfzmfosr rrych qyouhus wcfzmfosr klcwo xrezzxgdvg","rvbd wcfzmfosr lj xrezzxgdvg xuwguhgyyy fuz eirhfbt ukou h bcgx","bcgx wpmxyvbhc for qciw wcfzmfosr wjdm qyouhus qciw for xrezzxgdvg","bcgx sj xrezzxgdvg yjoklk bcgx hpc xrezzxgdvg lqfrvk xrezzxgdvg wcfzmfosr","qc wcfzmfosr jkjpgjalc tm v wcfzmfosr orgsqjzwa wcfzmfosr hh bfnxcx"],
    [686276715,934288178,625397331,519945877,864052244,971253305,512505036,865635090,281613863],
    9
  ]
]

TestCase.each { |c| p top_students *c }
