# funkcja silni
def silnia(liczba)
  if liczba == 0
    1
  else
    liczba * silnia(liczba - 1)
  end
end

p silnia(5)

# 5! = 1  2  3  4  5
# n = n * silnia(n-1)