flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

flintstones.flatten!()

p flintstones


#["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]