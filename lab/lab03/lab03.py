""" Lab 3: Recursion and Midterm Review """

def gcd(a, b):
    """Returns the greatest common divisor of a and b.
    Should be implemented using recursion.

    >>> gcd(34, 19)
    1
    >>> gcd(39, 91)
    13
    >>> gcd(20, 30)
    10
    >>> gcd(40, 40)
    40
    """
    if a < b:
        if b % a == 0:
            return a
        else:
            return gcd(a, b % a)
    elif b < a:
        if a % b == 0:
            return b
        else:
            return gcd(b, a % b)
    else:
        return a

def hailstone(n):
    """Print out the hailstone sequence starting at n, and return the
    number of elements in the sequence.

    >>> a = hailstone(10)
    10
    5
    16
    8
    4
    2
    1
    >>> a
    7
    """
    def steps(x, n):
        print(n)
        if n == 1:
            return x
        elif n % 2 == 0:
            n = n//2
        else:
            n = (n*3)+1
        return steps(x+1, n)
    return steps(1, n)
