require 'date'
puts"Predictor de Pico Y Placa"
puts "Ingrese el número de placa (Por ejemplo PTE0848) "  
STDOUT.flush  
placa = gets.chomp
puts "La placa es: " + placa
puts "Ingrese la fecha: (Por ejemplo 2017/01/25) "
fechain= gets.chomp
puts "Ingrese la hora: (Por ejemplo 08:30 o 14:30)"
horain= gets.chomp

arrayh=horain.split(":")
hora=arrayh[0].to_i
minuto=arrayh[1].to_i
time = Date.parse(fechain)
day = time.wday.to_i

last_number=placa[6].to_i


def calculo(n,h,hora,minuto)
    
   if n==h || n==h+1
         puts "Es tu día de pico y placa"
         if hora>=7 && hora<=9
             if hora=9 && minuto<=30
                   puts"Esta en hora de pico y placa"
                else
                    puts"No es tu hora de pico y placa"
             end
          else 
            puts "No es tu hora de pico y placa"
        end
          
    elsif n==0 && h=9
        puts "Es tu día de pico y placa"
        if hora>=7 && hora<=9 && minuto<=30
             if hora=9 && minuto<=30
                   puts"Esta en hora de pico y placa"
               else
                    puts"No es tu hora de pico y placa"
              end
          
          else
            puts "No es tu hora de pico y placa"
        end
    else
      
       puts " No es tu  día de pico y placa  "
    
    end
end

Pico = case day
when day=1 then calculo(last_number,day,hora,minuto)
when day=2 then calculo(last_number,day+1,hora,minuto)
when day=3 then calculo(last_number,day+2,hora,minuto)
when day=4 then calculo(last_number,day+3,hora,minuto)
when day=5 then calculo(last_number,day+4,hora,minuto)
else "fin de semana"

end


    
    
    