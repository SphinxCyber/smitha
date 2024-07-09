N = int(input("enter a number:"))
k = int(input("enter the key :"))
a=[0,1,2,3,4,5,6,7,8,9,10]
i=0

while i<N:
     if k==a[i]:
         print("Found at",i,"th position" )
         break
     i=i+1

else:
    print("not found")
