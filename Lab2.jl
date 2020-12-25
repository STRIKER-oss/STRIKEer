function f1(r::Robot)
    while isborder(r,Nord)==false
        move!(r,Nord)
        putmarker!(r)
    end

    if isborder(r,Nord)==true
        while isborder(r,Ost)==false
            move!(r,Ost)
            putmarker!(r)
        end
    end 

    if isborder(r,Ost)==true
        while isborder(r,Sud)==false
            move!(r,Sud)
            putmarker!(r)
        end
    end

    if isborder(r,Sud)==true
        while isborder(r,West)==false
            move!(r,West)
            putmarker!(r)
        end
    end
end




 
    
            