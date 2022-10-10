% Fixed point iteration Method . 

clc
close all
syms x
f = @(x)  exp(x)/3  % e^x-3*x=0

a=input('enter first guess:')
e=input("enter the tolerence")

n=100
for i=1:n
    x=f(a)

        if abs(x-a)<e 
            fprintf("this is after %f",i)
             break
        end
    a=x
end 



