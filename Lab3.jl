function f1(r::Robot)
    putmarker!(r)
    for a in (Ost,West,Ost,West,Ost,West,Ost,West,Ost,West)
        while isborder(r,a)==false
            move!(r,a)
            putmarker!(r)
        end
        if isborder(r,a)==true
            move!(r,Nord)
            putmarker!(r)
       
        end
        
    end
    while isborder(r,Ost)==false
        move!(r,Ost)
        putmarker!(r)
    end

    if isborder(r,Ost)==true
        while isborder(r,Sud)==false
            move!(r,Sud)
        end
    end

    if isborder(r,Sud)==true
        while isborder(r,West)==false
            move!(r,West)
        end
    end
    
        

   
end    






     

