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

create_index('Hola', 'Inmundo')
ordered_list= %w[ele1 ele2 ele3 ele4]
add_list(ordered_list)