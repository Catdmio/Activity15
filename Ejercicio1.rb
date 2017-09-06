# Crear un método que reciba dos strings, este método creará un archivo
#index.html y pondrá como párrafo cada uno de los strings recibidos.


#this method receives two parragraphs as strings
def create_index(p1, p2)
  p1 = "<p> #{p1}</p>"
  p2 = "<p> #{p2}</p>"
  file = File.open('index.html', 'w')
  file.puts p1, p2
  file.close
end



#Crear un método similar al anterior, que además pueda recibir
#un arreglo. Si el arreglo no está vacío, agregar debajo de los
#párrafos una lista ordenada con cada uno de los elementos.
def add_list(list)
  return if list.count.zero?
  file = File.open('index.html', 'a')
  file.puts '<ol>'
  list.each { |ele| puts "<li> #{ele} </li>" }
  file.puts '</ol>'
  file.close
end

#Crear un tercer método que además pueda recibir un color.
# Agregar color de fondo a los párrafos.
def add_color(color)
  bg_color = "style= 'background_color:#{color}'"
  file = File.open('index.html', 'r')
  lines = file.readlines
  new_lines = lines.map do |line|
    if line[1] == 'p'
      print line.split('<p')
      line = '<p '+ bg_color + line.split('<p')[1]
      else
        line
    end
  end
  file.close
  file = File.open('index.html', 'w')
  file.puts new_lines
  file.close
end
create_index('Hola', 'Inmundo')
ordered_list = %w[lista1 lista2 lista3 asdfasdawa holo]
add_list(ordered_list)
add_color('green')