function f1(r::Robot)
    while isborder(r,Nord)==false
        move!(r,Nord)
    end

    while isborder(r,Nord)==true && isborder(r,Ost)==false
        move!(r,Ost)
    end
    
    if isborder(r,Nord)==true && isborder(r,Ost)==true
        while isborder(r,Nord)==true
            move!(r,West)
        end
    end

  
end

