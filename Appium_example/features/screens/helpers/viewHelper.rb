
class ViewHelper
    def wait_for_element_by_id(atributo)
        begin
            wait = Selenium::WebDriver::Wait.new 
            wait.until{ find_element(id: atributo).displayed? }
        rescue Selenium::WebDriver::Error::TimeOutError => e
          raise "Não encontrou resultado da busca \n #{e.message}"
        end
    end

    def touch_element element
        id(element).click
    end

    def touch_element_by_text element,text
        find_elements(id: element).text(text).click
    end

    def insertValues_by_id element,text
        id(element).send_keys(text)
    end

    def deslizar_tarjeta(elemento)
        elemento = find_element(id: elemento)
          location = elemento.location
            inicio_x = location.x 
            inicio_y = location.y
            moveate_x = 418
            moveate_y = 585
          swipe(start_x: inicio_x, start_y: inicio_y, end_x: moveate_x, end_y: moveate_y)

    end

    def insertCredentials user_id, password_id, user, clave
        id(user_id).click
        id(user_id).send_keys(user)
        hide_keyboard
        id(password_id).click
        id(password_id).send_keys(clave)
        hide_keyboard
    end 

end 