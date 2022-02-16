def fantasy_inv(inventory)
    puts("Inventory:")
    sum = 0
    inventory.each { |item, amount|
        puts("#{amount} #{item}")
        sum += amount
    }
    puts("Total number of items: #{sum}")
end

def add_inventory(inventory, loot)
    loot_keys = loot.uniq
    loot_vals = loot_keys.map { |i| loot.count(i) }
    loot_dict = Hash[loot_keys.zip(loot_vals)]
    loot_dict.each { |item,amount|
        inventory.default = 0
        inventory[item] = amount + inventory[item]
    }
    return inventory
end

current_inv = {'rope' => 1, 'torch' => 6, 'gold coin' => 42, 'dagger' => 1, 'arrow' => 12}
loot = ['gold coin', 'dagger', 'gold coin', 'gold coin', 'ruby']

fantasy_inv(add_inventory(current_inv, loot))
