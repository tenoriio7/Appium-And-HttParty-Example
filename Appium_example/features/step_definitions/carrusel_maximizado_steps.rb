Quando("acesso ver mas") do
   @page=CarroselMaximizado.new
   retorno = @page.touch_element @page.ver_mas[$platform] 
   fail "Elemento nao encontrado" if retorno == false
end


Quando("click en ver menos") do
    @page=CarroselMaximizado.new
    @page.touch_element @page.ver_mas[$platform]
 end


 Quando("debo visualizar el carrosel minimizado") do
     @page.wait_for_element_by_id(@page.cupo_disponible[$platform])
 end
  
Então("debo visualizar el carrosel expandido") do
    @page=CarroselMaximizado.new
    @page.wait_for_element_by_id(@page.disponible_avances[$platform]) 
end


  
Entonces("debe permanecer el carrusel maximizado en la siguiente tarjeta") do
    binding.pry
end