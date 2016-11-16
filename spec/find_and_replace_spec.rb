require('rspec')
require('find_and_replace')

describe('String#find_and_replace') do
  it("replaces a single word another word") do
    expect(("hello").find_and_replace("hello", "hi")).to(eq("hi"))
  end

  it("replaces a single word another word in a sentence") do
    expect(("hello world").find_and_replace("hello", "hi")).to(eq("hi world"))
  end

  it("replaces a single word with capital letters another word in a sentence returns lowercase sentence ") do
    expect(("hello World").find_and_replace("Hello", "Hi")).to(eq("hi world"))
  end

  it("Takes a long sentence and replaces single words") do
    expect(("I took my duck on a walk to the pond").find_and_replace("pond", "cathedral")).to(eq("i took my duck on a walk to the cathedral"))
  end


end
