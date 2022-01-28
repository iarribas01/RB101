hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

traits = Array.new

hsh.each do |produce, details|
  if details[:type] == 'fruit'
    colors = details[:colors].map {|color| color.capitalize}
    traits << colors
  else
    sizes = details[:size].upcase
    traits << sizes
  end
end

p traits == [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]
