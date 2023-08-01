# Given this data structure write some code to return an array containing the
# colors of the fruits, and the sizes of the vegetables. The sizes should be
# uppercase and the colors should be capitalized.

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

x = hsh.each_with_object([]) do |(k, v), arr|
  if hsh[k][:type] == 'fruit'
    color_arr = hsh[k][:colors].each_with_object([]) { |color, color_arr| color_arr << color.capitalize }
    arr << color_arr
  else
    arr << hsh[k][:size].upcase
  end
end

p x