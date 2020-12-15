class Carta
    attr_accessor :numero, :pinta
    
    @@pintas = ['C', 'D', 'E', 'T']

    def initialize(numero=Random.rand(1..13), pinta=@@pintas.sample)
        @numero = numero
        @pinta = pinta
        raise ArgumentError, 'numero debe ser un entero' unless numero.kind_of?(Integer)
        raise RangeError, 'numero debe estar en el rango de 1 a 13' unless numero >= 1 && numero <= 13
        raise ArgumentError, 'pinta debe ser una letra entre C, D, E o T' unless pinta == 'C' || pinta == 'D' || pinta == 'E' || pinta == 'T'
    end
end

c1 = Carta.new(7, 'T')
c2 = Carta.new
c3 = Carta.new
c4 = Carta.new
c5 = Carta.new

arr = [c1, c2, c3, c4, c5]

arr.each { |i| puts "#{i} #{i.numero} #{i.pinta}"}