function desired_state= traj_rand(t,cur_state)
%points are p1 p2 p3 with radius of 0.5 des is destination
initial_pos=[0;0];

vmax=2;
accmax=2;
    function length=dist(pa,pb)
        x1=pa(1);
        x2=pb(1);
        y1=pa(2);
        y2=pb(2);
        length=((x1-x2)^2+(y1-y2)^2);
    end
    function bin=check(pa,pb,pc)
        %checks if obstacle at pb blocks path betwen pa pc
         x1=pa(1);
        x2=pc(1);
        y1=pa(2);
        y2=pc(2);
        m=(y2-y1)/(x2-x1);
        c=y1-m*x1;
        x3=pb(1);
        y3=pb(2);
        dis=abs((y3-m*x3-c)/sqrt(1+m^2));
        if(dis>0.5)
            bin=1;
        else
            bin=0;
        end
    end  
wp1,wp2,wp3;
flag=0;
if(check(initial_pos,p1,des))
    if(check(initial_pos,p2,des))
    if(check(initial_pos,p3,des))
        wp1=(3*initial_pos+des)/4;
        wp2=(initial_pos+des)/2;
        wp3=(3*des+initial_pos)/4;
        flag=1;
    end
    end
end

if(flag==0)
    
end
if (t<3)
    desired_state.vel=[1;2]; 
    desired_state.pos=initial_pos+  t*desired_state.vel ;
elseif(t<4)
        desired_state.vel=[0;0];
        desired_state.pos=[3;6]
else 
    desired_state.vel=[2;1];
    desired_state.pos=[3;6]+t*desired_state.vel/10;
    %desired_state.acc=[1;1];

end
end