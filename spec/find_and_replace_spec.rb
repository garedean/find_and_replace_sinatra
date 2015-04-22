require('rspec')
require('find_and_replace')

describe('String#find_and_replace') do
  it("Finds all instances of a string of characters and replaces with a substitute.") do
    expect("I am a dog person. I love dogs!".find_and_replace("dog", "cat")).to(eq("I am a cat person. I love cats!"))
  end
end
