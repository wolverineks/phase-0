require_relative "my_solution"

describe "pad!" do
  let!(:names)  { ["Alivia Blount","Alyssa Page","Alyssa Ransbury","Andria Reta","Austin Dorff","Autumn McFeeley","Ayaz Uddin","Ben Giamarino","Benjamin Heidebrink","Bethelhem Assefa","Bobby Reith","Dana Breen","Brett Ripley","Rene Castillo","Justin J Chang","Ché Sanders","Chris Henderson","Chris Pon","Colette Pitamba","Connor Reaumond","Cyrus Vattes","Dan Heintzelman","David Lange","Eduardo Bueno","Liz Roche","Emmanuel Kaunitz","FJ","Frankie Pangilinan","Ian Fricker","Ian Thorp","Ivy Vetor","Jack Baginski","Jack Hamilton","JillianC","John Craigie","John Holman","John Maguire","John Pults","Jones Melton","Tyler Keating","Kenton Lin","Kevin Serrano","wolv","Kyle Rombach","Laura Montoya","Luis Ybarra","Charlotte Manetta","Marti Osteyee-Hoffman","Megan Swanby","Mike London","Michael Wang","Michael Yao","Mike Gwozdek","Miqueas Hernandez","Mitchell Kroska","Norberto Caceres","Patrick Skelley","Peter Kang","Philip Chung","Phillip Barnett","Pietro Martini","Robbie Santos","Rokas Simkonis","Ronu Ghoshal","Ryan Nebuda","Ryan Smith","Saralis Rivera","Sam Assadi","Spencer Alexander","Stephanie Major","Taylor Daugherty","Thomas Farr","Maeve Tierney","Tori Huang","Alexander Williams","Victor Wong","Xin Zhang","Zach Barton"] }

  it "creates groups with at least 3 students" do
     expect(create_groups(names)[o].).to_be greater_than(2)
  end
end

# describe "pad" do
#   let!(:empty_array)  { [] }
#   let!(:array)        { [1,2,3] }
#   let!(:long_array)   { [1,2,3]*10 }
#   let!(:random_array) { (1..1+rand(100)).map { rand(10) } }
#
#   let!(:all_arrays)   { [empty_array, array, long_array, random_array] }
#
#   it "operates non-destructively" do
#     all_arrays.each do |array|
#       expect(pad(array, 0).object_id).to_not eq(array.object_id)
#     end
#   end
#
#   it "pads elements to the end of an array" do
#     all_arrays.each do |array|
#       pad_size = 1 + rand(50)
#       expect(pad(array, array.length + pad_size, 'apple')).to eq(array + Array.new(pad_size, 'apple'))
#     end
#   end
#
#   it "doesn't pad when minimum size is equal to the array's length" do
#     all_arrays.each do |array|
#       expect(pad(array, array.length)).to eq(array)
#     end
#   end
#
#   it "doesn't pad when the minimum size is 0" do
#     all_arrays.each do |array|
#       expect(pad(array, 0)).to eq(array)
#     end
#   end
#
#   it "pads with nil by default" do
#     expect(pad(empty_array, 2)).to eq([nil, nil])
#   end
#
#   it "can pad with a string" do
#     expect(pad(empty_array, 2, 'apple')).to eq(['apple', 'apple'])
#   end
#
#   it "can pad with an object" do
#     expect(pad(empty_array, 2, {})).to eq([{}, {}])
#   end
end
