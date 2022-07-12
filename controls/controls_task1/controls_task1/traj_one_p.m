function desired_state= traj_one_p(t,~)
%obstacle is point p1 with radius of 0.5 des is destination currently only
%one obstacle
initial_pos=[0;0];
des=[2;5];
p1=[1;2];
radius=0.5;
vmax=2;
accmax=2;
Rot=[cos(pi/2)  -sin(pi/2);sin(pi/2) cos(pi/2)];
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
wp1=0;wp2=0;
flag=0;
if(check(initial_pos,p1,des))
        wp1=(2*initial_pos+des)/3;
        wp2=(initial_pos+2*des)/3;
        flag=1;
end
if(flag==0)
   vect=(des-initial_pos)/dist(initial_pos,des);
   exp_p1=(Rot*vect)*8*radius+p1;
   exp_p2=2*p1-exp_p1;
   if(dist(initial_pos,exp_p1)<dist(initial_pos,exp_p2))
       exp_p=exp_p1;
   else
       exp_p=exp_p2;
   end
   wp1=(1.5*exp_p+initial_pos)/2;
   wp2=(1.5*exp_p+des)/2;
end
if (t<1)
   dir=wp1-initial_pos;
   distance=dist(initial_pos,wp1);
   desired_state.pos=dir*t+initial_pos;
   desired_state.vel=dir;
   desired_state.acc=[0;0];
elseif(t<2)
   dir=wp2-wp1;
   %distance=dist(,wp1);
   desired_state.pos=dir*(t-1)+wp1;
   desired_state.vel=dir;
   desired_state.acc=[0;0];
    
elseif(t<3)
    dir=des-wp2;
   %distance=dist(,wp1);
   desired_state.pos=dir*(t-2)+wp2;
   desired_state.vel=dir/1;
   desired_state.acc=[0;0];
else
    desired_state.pos=des;
    desired_state.vel=[0;0];
    desired_state.acc=[0;1];
end
end