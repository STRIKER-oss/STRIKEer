function f1(r::Robot)
    for i in 1:11
        flag=false
        for a in 1:10
            if isborder(r,Ost)==false
                move!(r,Ost)
            else 
                flag=true
                block!(r)
                break
                
            end
            if flag
                break
            end
            
        end

        if flag
            break
        end

        

      
  
        for l in 1:10
         move!(r,West)
        
        
        end 

        if isborder(r,Nord) == false
            move!(r,Nord)
            
        end


       
        

       
        
    end
    
    


    
end

function block!(r::Robot)
    while isborder(r,Ost)==true
        putmarker!(r)
        while isborder(r,Ost)==true
            move!(r,Nord)
            putmarker!(r)
            if isborder(r,Ost)==false
                for q in 1:1
                    move!(r,Ost)
                    putmarker!(r)
                end
            end
        end
    
        while isborder(r,Sud)==true
            move!(r,Ost)
            putmarker!(r)
            if isborder(r,Sud)==false
                for q in 1:1
                    move!(r,Sud)
                    putmarker!(r)
                end
            end
        end
    
        while isborder(r,West)==true
            move!(r,Sud)
            putmarker!(r)
            if isborder(r,West)==false
                for q in 1:1
                    move!(r,West)
                    putmarker!(r)
                end
            end
        end
    
        while isborder(r,Nord)==true
            move!(r,West)
            putmarker!(r)
            if isborder(r,Nord)==false && isborder(r,Sud)==false
                move!(r,Sud)
            end

            
        end
    
        while isborder(r,Sud)==false
            move!(r,Sud)
        end
        if isborder(r,Sud)==true
            while isborder(r,West)==false
                move!(r,West)
                
            end
        end
    
    
    
    
    end
end