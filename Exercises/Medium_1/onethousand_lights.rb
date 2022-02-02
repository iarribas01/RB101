# need to double check answer with other test cases


# Given n switched (1-n)
# each switch is connected to one light that is off
# first round, turn on all lights (toggle)
# second round, toggle 2, 4, 6
# third round, toggle 3, 6, 9
# ?fourth round, toggle 4, 8, 12
# ?fifth round, toggle 5, 10, 15

# every round, toggle the every n round light 
# ex ) 2nd round, toggle every 2nd light
# ex) 3rd round, toggle every 3rd light

# e # n = 5 lights

# input: repetitions -> how many rounds performed
# input: lights - > how many lights in the hall

# round 1: every light is turned on
# # []
# # ['1', '2', '3', '4', '5']

# round 2: lights 2 and 4 are now off; 1, 3, 5 are on
# # ['1', 2, '3', 4, '5'] -> toggle position 2, 4
# # [1, 3, 5]

# round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
# # ['1', 2, 3, 4, '5'] -> toggle position 3
# # [1. 5]

# round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
# # ['1', 2, 3, '4', '5'] -> toggle position 4
# # [1, 4, 5]

# round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
# # ['1', 2, 3, '4', 5] -> toggle position 5
# # [1, 4]

# # d
# array of booleans representing whether a switch is on or off
# array holding the position of the switches that are toggled on

# a

# receive repetitions

# receive number of switches

def toggle_switches(lights, repetitions)

  # create an array the size of the number of switches
  # set all boolean values to true -> for 'on'
  switches = [false]*lights

  # iterate through the array number of repetitions
  1.upto(repetitions) do |round|

    index = 0
    switches.map! do |switch|

      # toggle certain switches on if they meet criteria
      
      if ((index + 1) % round == 0) # toggle switch if the number is a factor of the current round
        index += 1
        !switch
      else
        index += 1
        switch
      end
    end
  end

  # extract the positions of the switches that are on
  # create empty array  
  # iterate through array
  # if switch is on, add position to empty array
  positions = []
  switches.each_with_index do |switch, i|
    if switch
      positions << i+1
    end
  end



  # return an array of positions of switches that are on
  positions
end

p toggle_switches(5, 2)
p toggle_switches(10, 3)
# c