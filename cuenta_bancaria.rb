#####Opcion A (Se respeta peticion de RangeError si numero_de_cuenta tiene n de digitos != 8, pero no existen numeros de cuenta menores a 10000000[8 digitos])

class CuentaBancaria
    attr_accessor :nombre_de_usuario

    def initialize(nombre_de_usuario, numero_de_cuenta, vip=0)
      @nombre_de_usuario = nombre_de_usuario
      @numero_de_cuenta = numero_de_cuenta
      @vip = vip
      raise RangeError, 'La cuenta debe tener 8 digitos' if numero_de_cuenta.digits.count != 8
    end

    def numero_de_cuenta
        cuenta = "#{@vip}-#{@numero_de_cuenta}"
    end
end

cuenta1 = CuentaBancaria.new('Felipe', 12345678, 1)
puts "Titular: #{cuenta1.nombre_de_usuario} \nCuenta: #{cuenta1.numero_de_cuenta}"

####Opcion B (RangeError si el n_cuenta es mayor a 8 digitos, consultar por n_cuenta devuelve string de 8 digitos partiendo de 00000001 mas digito del prefijo vip [0- | 1-])

# class CuentaBancaria
#     attr_accessor :nombre_de_usuario

#     def initialize(nombre_de_usuario, numero_de_cuenta, vip=0)
#       @nombre_de_usuario = nombre_de_usuario
#       @numero_de_cuenta = numero_de_cuenta
#       @vip = vip
#       raise RangeError, 'numero de cuenta soporta hasta 8 digitos' if numero_de_cuenta.digits.count > 8
#     end

#     def numero_de_cuenta
#         cuenta = "#{@vip}-#{@numero_de_cuenta.to_s.rjust(8, '0')}"
#     end
# end

# cuenta1 = CuentaBancaria.new('Felipe',1234567, 1)
# puts "Titular: #{cuenta1.nombre_de_usuario} \nCuenta: #{cuenta1.numero_de_cuenta}"