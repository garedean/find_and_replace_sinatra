require('rspec')
require('find_and_replace')

describe('String#find_and_replace') do
  it("replaces a single word") do
    expect("I am a dog person.".find_and_replace("dog", "cat")).to(eq("I am a cat person."))
  end
  it("replaces multiple words") do
    expect("I am a dog person. I love dogs!".find_and_replace("dog", "cat")).to(eq("I am a cat person. I love cats!"))
  end
end
