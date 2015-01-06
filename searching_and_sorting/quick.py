def quick(data):
    L = data[:]
    count = len(L)
    if count < 2:
        return L
 
    pivot_index = count - 1
    pivot = L[pivot_index]
    l_index = 0
    r_index = pivot_index - 1
    while l_index <= r_index:
        if pivot < L[l_index]:
            if L[r_index] < pivot:
                L[l_index], L[r_index] = L[r_index], L[l_index]
                l_index += 1
                r_index -= 1
            else:
                r_index -= 1
        else:
            l_index +=1
 
    m_index = max(l_index, r_index)
    L[m_index], L[pivot_index] = L[pivot_index], L[m_index]
 
    print l_index, r_index, m_index, pivot_index
    print L[:m_index]
    left = quick(L[:m_index])
    print "right"
    right = quick(L[m_index:])
 
    return left + right


data = [10,9,3,2,5,6,1,7,8,4]
print quick(data)
