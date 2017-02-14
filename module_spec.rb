require_relative 'module'

describe Operator do
  let(:quiz) {Operator.new("12 33 2 88 5 9")}

  it "adds all the numbers" do
    expect(quiz.add).to eq ({"Add" => 149})
  end

  it "subtracts the numbers" do
    expect(quiz.subtract).to eq ({"Subtract" => -125})
  end

  it "multiplies the numbers" do
    expect(quiz.multiply).to eq ({"Multiply" => 3136320})
  end

  it "divides the numbers" do
    expect(quiz.divide).to eq ({"Divide" => 4.591368227731864e-05})
  end

end
