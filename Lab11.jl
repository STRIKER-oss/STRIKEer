function f1(r)
    num_steps = angle(r,(Sud,West))
    num_steps_to_ost = sum(num_steps[1:2:end])
    num_steps_to_nord = sum(num_steps[2:2:end])

   
    movements!(r,Nord,num_steps_to_nord)
    putmarker!(r)
    num_steps_to_sud = movements!(r,Nord)

    movements!(r,Ost,num_steps_to_ost)
    putmarker!(r)
    num_steps_to_west = movements!(r,Ost)

    movements!(r,Sud,num_steps_to_sud)
    putmarker!(r)
    movements!(r,Sud) 

    movements!(r,Sud,num_steps_to_west)
    putmarker!(r)
    movements!(r,Sud) 

    movements!(r,(Ost,Nord),num_steps)
    
end
function angle(r,angle::NTuple{2,HorizonSide})
    num_steps=[]
    while isborder(r,angle[1])==false || isborder(r,angle[2]) 
        push!(num_steps, movements!(r, angle[2]))
        push!(num_steps, movements!(r, angle[1]))
    end
    return num_steps
end
function movements!(r,sides,num_steps::Vector{Int})
    for (i,n) in enumerate(num_steps)
        movements!(r, sides[mod(i-1, length(sides))+1], n)
    end
end