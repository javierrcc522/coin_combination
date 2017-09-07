class Machine
  def initialize

  end
  userinput = 0.41
  def filter(input)
    total = input
    i = 0

    coins = [0.25, 0.10, 0.05, 0.01]
    change = []

    while (total >= coins[i]) do
      total = total.round(2)
      total -= coins[i]
      change.push(coins[i])
      total = total.round(2)
      if (total >= coins[i])
        i = i + 0
        if (total - coins[i] === coins[i]*0.56)
          i = i + 1
        end
      else (total < coins[i])
          i = i + 1
      end
      total = total.round(2)
    end
    return change
  end
end
