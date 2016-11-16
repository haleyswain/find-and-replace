require('rspec')
require('find')

describe ("String#findandreplace") do
  it("will find the inputted word in the inputted sentence and change it with the second word") do
    expect("hello world".findandreplace("world", "universe")).to(eq("hello universe"))
  end

  it("will find partial match in words and change them with the second word") do
    expect("I am walking my cat to the cathederal".findandreplace("cat", "dog")).to(eq("I am walking my dog to the doghederal"))
  end
end
