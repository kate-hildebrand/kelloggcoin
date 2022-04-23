# Cryptocurrency is all the rage. You have decided to create your own,
# KelloggCoin, that will massively disrupt financial markets at the Global
# Hub.

# Don't change the following code, which represents a series of transactions, each
# of which represents a transfer of KelloggCoin from one user to another – transactions 
# with no from_user are from the "ICO" (Initial Coin Offering)

blockchain = [
  { from_user: nil, to_user: "ben", amount: 20000 }, #0
  { from_user: nil, to_user: "brian", amount: 20000 }, #1
  { from_user: "ben", to_user: "evan", amount: 9000 }, #2
  { from_user: "brian", to_user: "anthony", amount: 7000 }, #3
  { from_user: "evan", to_user: "anthony", amount: 400 }, #4
  { from_user: "ben", to_user: "anthony", amount: 1500 },#5
  { from_user: "anthony", to_user: "ben", amount: 4500 },#6
  { from_user: "anthony", to_user: "evan", amount: 1750 } #7
]

# Write code below that returns the number of KelloggCoin that each user has in their 
# KelloggCoin "wallet".

# It should print out:
# Ben's KelloggCoin balance is 14000
# Brian's KelloggCoin balance is 13000
# Evan's KelloggCoin balance is 10350
# Anthony's KelloggCoin balance is 2650

# 👇👇👇 Your code HERE 👇👇👇

amount1 = blockchain [0][:amount] 
amount1 = amount1.to_f
amount2 = blockchain [1][:amount] 
amount2 = amount2.to_f
amount3 = blockchain [2][:amount] 
amount3 = amount3.to_f
amount4 = blockchain [3][:amount] 
amount4 = amount4.to_f
amount5 = blockchain [4][:amount] 
amount5 = amount5.to_f
amount6 = blockchain [5][:amount] 
amount6 = amount6.to_f
amount7 = blockchain [6][:amount] 
amount7 = amount7.to_f
amount8 = blockchain [7][:amount] 
amount8 = amount8.to_f

#add together Ben's transactions
ben_amount = amount1 - amount3 - amount6 + amount7
ben_final = "Ben's KelloggCoin balance is $#{ben_amount}"
puts ben_final

#add together Brian's's transactions
brian_amount = amount2 - amount4
brian_final = "Brian's KelloggCoin balance is $#{brian_amount}"
puts brian_final

#add together Evan's transactions
evan_amount = amount3 - amount5 + amount8
evan_final = "Evan's KelloggCoin balance is $#{evan_amount}"
puts evan_final

#add together Anthony's's transactions
anythony_amount = amount4 + amount5 + amount6 - amount7 - amount8
anthony_final = "Anthony's KelloggCoin balance is $#{anythony_amount}"
puts anthony_final