# Functions to determine attack damage
# Attack damage is dependent on stats
# All attacks depend partially on luck

def sword_damage(str, dex, luck)
  damage = (str + dex)/2 * rand(luck)
  if damage == 0
    puts "You missed!"
  else
    puts "Your sword strikes for #{damage} damage!"
  end
end

def warhammer_damage(str, luck)
  damage = str * rand(luck)
  if damage == 0
    puts "You missed!"
  else
    puts "Your hammer strikes for #{damage} damage!"
  end
end

def spell_damage(int, luck)
  damage = int * rand(luck)
  if damage == 0
    puts "Your spell failed! Study harder!"
  else
    puts "Your spell hits for #{damage} damage!"
  end
end

def charm_effect(cha, luck)
  damage = cha * rand(luck)
  if damage < 50
    puts "Your charm failed! Buy cuter clothes!"
  else
    puts "Your charm succeeded!\nYour opponent prostrates himself before you!"
  end
end

def steal(dex, cha, luck)
  damage = (dex + cha)/2 * rand(luck)
  if damage < 50
    puts "Your stealing attempt failed!"
  else
    puts "You stole a valuable item!"
  end
end

def bow_damage(acc, luck)
  damage = acc * rand(luck)
  if damage == 0
    puts "You missed!"
  else
    puts "Your arrow hits for #{damage} damage!"
  end
end

def poison(wis, luck)
  damage = (wis * rand(luck)) / 4
  if damage == 0
    puts "Your poison spell failed!"
  else
    puts "Your poison succeeded!\nThe challenger loses #{damage} HP each turn!"
  end
end

def escape(dex, luck)
  damage = dex * rand(luck)
  if damage < 50
    puts "You were caught and pulled back into the fray!"
  else
    puts "You escaped!"
  end
end

######################
# Program start
######################

print "A challenger appears!"
sleep(0.5)
print " ."
sleep(0.5)
print " ."
sleep(0.5)
puts " ."
sleep(0.5)
puts "Time to set your stats. All stats must be between 1 and 10."

# Asks user to input stats
# Checks for input validity

while true
  puts "Strength: "
  str = gets.chomp.to_i
  if str < 1 || str > 10
    puts "Enter a number between 1 and 10."
  elsif str > 8
    puts "Look at those muscles!"
    break
  else break
  end
end

while true
  puts "Intelligence: "
  int = gets.chomp.to_i
  if int < 1 || int > 10
    puts "Enter a number between 1 and 10."
  elsif int > 8
    puts "You're a smarty-pants!"
    break
  else break
  end
end

while true
  puts "Charisma: "
  cha = gets.chomp.to_i
  if cha < 1 || cha > 10
    puts "Enter a number between 1 and 10."
  elsif cha > 8
    puts "I'm in love! *swoon*"
    break
  else break
  end
end

while true
  puts "Dexterity: "
  dex = gets.chomp.to_i
  if dex < 1 || dex > 10
    puts "Enter a number between 1 and 10."
  elsif dex > 8
    puts "You're a slippery thing, aren't you?"
    break
  else break
  end
end

while true
  puts "Wisdom: "
  wis = gets.chomp.to_i
  if wis < 1 || wis > 10
    puts "Enter a number between 1 and 10."
  elsif wis > 8
    puts "I can see you have experience..."
    break
  else break
  end
end

while true
  puts "Accuracy: "
  acc = gets.chomp.to_i
  if acc < 1 || acc > 10
    puts "Enter a number between 1 and 10."
  elsif acc > 8
    puts "Who doesn't love a skilled marksman?"
    break
  else break
  end
end

while true
  puts "Luck: "
  luck = gets.chomp.to_i
  if luck < 1 || luck > 10
    puts "Enter a number between 1 and 10."
  elsif luck > 8
    puts "Lucky duck!"
    break
  else break
  end
end

puts ""
print "."
sleep(0.5)
print " ."
sleep(0.5)
puts " ."
sleep(0.5)

puts "Got it. What type of attack would you like to use?"
puts "Options: "
puts "1 - Sword"
puts "2 - Warhammer"
puts "3 - Spell"
puts "4 - Charm"
puts "5 - Steal"
puts "6 - Bow"
puts "7 - Poison"
puts "8 - Run Away!"

while true
  attack = gets.chomp.to_i
  if attack < 1 || attack > 8
    puts "Enter a value between 1 and 8."
  else break
  end
end

case attack
when 1
  sword_damage(str, dex, luck)
when 2
  warhammer_damage(str, luck)
when 3
  spell_damage(int, luck)
when 4
  charm_effect(cha, luck)
when 5
  steal(dex, cha, luck)
when 6
  bow_damage(acc, luck)
when 7
  poison(wis, luck)
when 8
  escape(dex, luck)
end

