n = int(input())
for _ in range(n):
    length = int(input())
    carts = [int(x) for x in input().split()]
    counter = 0
    for i in range(length):
        for j in range(i+1, length):
            if carts[i] > carts[j]:
                carts[i], carts[j] = carts[j], carts[i]
                counter += 1
    print("Optimal train swapping takes", str(counter), "swaps.")
