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

create_index('Hola', 'Inmundo')