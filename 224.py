MAX32 =0xffffffff
X = 123456789
Y = 362436069
Z = 521288629
W = 88675123

def xor_shift():
    global X, Y, Z, W
    t = X ^ (X << 11)
    X = Y
    Y = Z
    Z = W
    W = W^ (W >>  19) ^ t ^ (t >> 8)
    return W
'''
W1 = xor_shift() % MAX32
W2 = xor_shift() % MAX32
W3 = xor_shift()% MAX32
'''
my_file = open("chet.txt", "w")
my_file1 = open("nechet.txt", "w")
my_file2=open("some.txt", "w")
n=0
while n<1000:
    print(n)
    z=xor_shift() % MAX32
    n+=1
    print(z)
    my_file2.write(str(z))
    my_file2.write("\n")
   # n % 2 ==0 if (my_file.write( str(z) )) else my_file.write("\n")
    if n % 2 ==1:
        my_file.write(str(z))
        my_file.write("\n")
    else:
        my_file1.write(str(z))
        my_file1.write("\n")
my_file.close()
my_file1.close()
my_file2.close()


with open("chet.txt") as file:
    array = [row.strip() for row in file]
print(array)

