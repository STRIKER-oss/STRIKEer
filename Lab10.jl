function f1(r::Robot)
temp!(r)

for a in (Ost,West,Ost,West,Ost,West,Ost,West,Ost,West)
    while isborder(r,a)==false
        move!(r,a)
       temp!(r)
       
    end
    if isborder(r,a)==true
        move!(r,Nord)
        temp!(r)
    
    end
    
end
while isborder(r,Ost)==false
    move!(r,Ost)
    temp!(r)
    
end


end

function temp!(r::Robot)
    if ismarker(r)==true
        b= temperature(r)
        print(b,"\n")
    end
end

