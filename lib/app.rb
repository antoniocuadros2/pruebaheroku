require "roda"

class App < Roda
  route do |r|
    r.root do
      r.redirect "/saludo"
    end
    
    r.on "saludo" do
      @saludo = 'Hola mundo'

      r.is do
        r.get do
          "#{@saludo}!"
        end
      end
    end
  end
end
