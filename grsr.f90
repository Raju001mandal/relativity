program grsr
implicit none

integer::i,n,j
real::x,y,z,x0,y0,z0,v0,v,dt,t,x2,y2,z2,xx2
real,parameter::pi=acos(-1.0),xor=0.0,yor=0.0,zor=0.0,t0=0.0,tf=10,dx=200,dy=5.0,dz=5.0

print*,"give the step size dt of time(e.g 0.01)"
read*,dt


print*,"give the speed of the moving frame along x-axis(e.g 100)"
read*,v0

x0=xor
y0=yor
z0=zor
v=v0
xx2=0.0

n=int((tf-t0)/dt)


open(1,file="grsr.dat")
open(2,file="grsr2.dat")
open(3,file="grsr3.dat")
open(4,file="grsr4.dat")
open(5,file="grsr5.dat")
open(6,file="grsr6.dat")
open(7,file="grsr7.dat")



do i=0,n

t=i*dt

x=x0+v*t
y=y0
z=z0

x2=x+dx
y2=y+dy
z2=z+dz

!=================moving frame==================================  
write(1,*)x,0.0,0.0,x2,0.0,0.0
write(2,*)x,y,0.0,x,y2,0.0
write(3,*)x,0.0,z,x,0.0,z2
write(7,*)x,0.0,4.0,x+100.0,0.0,4.0

!===================rest frame==================================
write(4,*)x0,0.0,0.0,x0+dx,0.0,0.0
write(5,*)0.0,y0,0.0,0.0,y0+dy,0.0
write(6,*)0.0,0.0,z0,0.0,0.0,z0+dz

end do

end program
