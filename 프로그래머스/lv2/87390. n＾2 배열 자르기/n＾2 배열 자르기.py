import math

def solution(n, left, right):
    answer = []

    for i in range(left, right+1) :
        
        remain = (i % n) + 1
        share = int(i / n) +1
        
        if remain > share :
            answer.append(remain)
        else :
            answer.append(share) 
    
    return answer