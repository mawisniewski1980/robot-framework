print("Hello World!")

# comment one line
'''
comment more lines
'''

#variables
a = 1 # integer
b = "value" # string
c = 1.1 # float

print(a, b, c)
print(type(a))
print(type(b))
print(type(c))

# operators

f = 34
g = 2
print("+", f+g)
print("-", f-g)
print("*", f*g)
print("/", f/g)
print("//", f//g)

# collections
    # list
    # tuple
    # set
    # dictionary

    # list
l1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
print(l1)
print(l1[0])
l1.append(321) # add to list
print(l1)
l1.pop(10) # remove from list by index
print(l1)
l1.remove(10) # remove by value(title)
print(l1)

    # tuple
    # not remove, not add, unchenchable
t1 = (1, 2, 2)
print(t1)
print(t1[1])

    # set
myset = {1,2,2,2,3,4,5,2,4,55,6,7,42,2}   
print(myset)

    # dictionary
myDict = {
    "barry" : "ble ble ble",
    "dyzio" : "kyzio",
    "dupcia" : "cycuszki"
}    
print(myDict)
print(myDict["barry"])
print(myDict.get("barry"))

d = 222
d = int(d)
print(d)
print(type(d))

# if conditional statememnt

a = 10
b = 100
c = 9
d = 10

if(a>b):
    print("a is greater")
elif(c>a):
    print("c is grater")
elif(a==d):
    print("a is equal d")        
else:
    print("b is greater")    

# loops 

i = 0
while(i<10):
   print("Hello ")
   i = i + 1    

for i in range(0, 12):
    print(i)   

fruits = ["Graphes", "Water melons", "Oranges", "Apples"]  
for item in fruits:
     print("Fruits: " + item)
     if item == "Oranges":
         print("Oranges found")
         break # continue

print("XXXXXXXXXXXXXXXXXX")

for item in fruits:
    if item == "Oranges":
         print("Oranges found")
         continue
print("Fruits: " + item) 

# functions

def printList(list1):
    for item in list1:
        print("in list: ", item)

printList(fruits)

# files
f = open("1.txt", "w")
print("Name: ", f.name)
print("Closed: ", f.closed)
print("Mode: ", f.mode)
print("xxxxxxxxxxxxxxxxxxxxx")

f.write("dasdasdasdsad")
f.close()
print("Name: ", f.name)
print("Closed: ", f.closed)
print("Mode: ", f.mode)

# class

