def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]
  case
  when angles.include?(0) || angles.reduce(:+) != 180 then :invalid
  when angles.include?(90) then :right
  when angles.count { |angle| angle > 90 } > 0 then :obtuse
  else :acute
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
