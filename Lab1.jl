function mark_kross!(r::Robot) # - главная функция  
    for side in (Nord,West,Sud,Ost) # - перебор всех возможных направлений
        putmarke!(r,side)
        moove2(r,inverse(side))
    end
    putmarker!(r)#установка роботом маркера в изначальной позиции
end

putmarke!(r::Robot, side::HorizonSide) = #установка маркера роботом
    while moove1!(r, side) == true
        putmarker!(r)
    end

moove1!(r::Robot, side::HorizonSide)::Bool = #движение робота если это возможно
    if isborder(r, side)
        return false
    else 
        move!(r,side)
        return true
    end


moove2(r::Robot,side::HorizonSide) = #движение робота по установленным маркерам
    while ismarker(r)==true 
        move!(r,side) 
    end


inverse(side::HorizonSide) = HorizonSide(mod(Int(side)+2, 4))# возвращает направление
    

    


        
        
            


