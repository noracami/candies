# @param {String[]} event1
# @param {String[]} event2
# @return {Boolean}
def have_conflict(event1, event2)
  to_minutes = -> _ {
    _.split(':').map.with_index { |e, idx|
      idx == 0 ? 60 * e.to_i : e.to_i
    }.sum
  }
  !(event1.map(&to_minutes)[0] > event2.map(&to_minutes)[1] ||
    event1.map(&to_minutes)[1] < event2.map(&to_minutes)[0])
end

p have_conflict(["01:15","02:00"], ["02:00","03:00"])
p have_conflict(["01:00","02:00"], ["01:20","03:00"])
p have_conflict(["10:00","11:00"], ["14:00","15:00"])
