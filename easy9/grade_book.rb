def get_grade(score_1, score_2, score_3)
  grade_letter(((score_1 + score_2 + score_3) / 3.0))
end

def grade_letter(avg)
  case
  when avg >= 90.0 then 'A'
  when avg >= 80.0 then 'B'
  when avg >= 70.0 then 'C'
  when avg >= 60.0 then 'D'
  else 'F'
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"