if(! exists('pch_idx')) pch_idx <- 1 else pch_idx = pch_idx + 1
LETTER <- LETTERS[pch_idx %% 26]
print(LETTER)
plot(1:10, rnorm(10), col = pch_idx, pch = LETTER)

print('no problems here')
