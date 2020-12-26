function f1(r::Robot)
    right_angle(r)
    left_angle(r)
    left_angle_2(r)
    right_angle_2(r)
    putmarker!(r)
 end
 
 function right_angle(r::Robot)
    while isborder(r, Nord) == false
        if isborder(r, Sud) == false
            if isborder(r, Ost) == false
                move!(r, Ost)
                move!(r, Sud)
                putmarker!(r)
            else
                break
            end
        else
            break
        end
    end 
    
    for i in 1:20
        move!(r, Nord)
        move!(r, West)
        if ismarker(r) == false
            break
        end
    end
 end
 
 
 
 function left_angle(r::Robot)
    while isborder(r, Nord) == false
        if isborder(r, Sud) == false
            if isborder(r, West) == false
                move!(r, West)
                move!(r, Sud)
                putmarker!(r)
            else
                break
            end
        else
            break
        end
    end 
    
    for i in 1:20
        move!(r, Nord)
        move!(r, Ost)
        if ismarker(r) == false
            break
        end
    end
 end
 
 function left_angle_2(r::Robot)
    while isborder(r, Sud) == false
        if isborder(r, Nord) == false
            if isborder(r, West) == false
                move!(r, West)
                move!(r, Nord)
                putmarker!(r)
            else
                break
            end
        else
            break
        end
    end 
    
    for i in 1:20
        move!(r, Sud)
        move!(r, Ost)
        if ismarker(r) == false
            break
        end
    end
 end
 
 function right_angle_2(r::Robot)
    while isborder(r, Sud) == false
        if isborder(r, Nord) == false
            if isborder(r, Ost) == false
                move!(r, Ost)
                move!(r, Nord)
                putmarker!(r)
            else
                break
            end
        else
            break
        end
    end 
    
    for i in 1:20
        move!(r, Sud)
        move!(r, West)
        if ismarker(r) == false
            break
        end
    end
 end
 
 
    
     
 
     
 
     
     
     
 
 
     
 
     
 
 
 
 
 
 