clc
clear all

f=@(x) 2*x+sin(x)-cos(x)

syms x 
df=diff(f,x)
df=inline(df)

x=0
n=100
e=0.00001

for i=1:n
    x1=x-(f(x)/df(x))
     if abs(x-x1)<e
        break 
    end
    x=x1
end 