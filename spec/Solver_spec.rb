require_relative '../solver'
require 'rspec'

RSpec.describe Solver do
  describe '#factorial' do
    it 'returns 1 for input 0' do
      solver = Solver.new
      expect(solver.factorial(0)).to eq(1)
    end

    it 'returns the correct factorial for positive integers' do
      solver = Solver.new
      expect(solver.factorial(5)).to eq(120)
      expect(solver.factorial(6)).to eq(720)
      expect(solver.factorial(10)).to eq(3_628_800)
    end

    it 'raises an ArgumentError for negative integers' do
      solver = Solver.new
      expect { solver.factorial(-1) }.to raise_error(ArgumentError)
      expect { solver.factorial(-10) }.to raise_error(ArgumentError)
    end
  end
  describe '#reverse' do
    it 'returns the reversed word' do
      solver = Solver.new
      expect(solver.reverse('hello')).to eq('olleh')
      expect(solver.reverse('world')).to eq('dlrow')
      expect(solver.reverse('OpenAI')).to eq('IAnepO')
    end
  end

  describe '#fizzbuzz' do
    it 'returns "fizz" when the input is divisible by 3' do
      solver = Solver.new
      expect(solver.fizzbuzz(3)).to eq('fizz')
      expect(solver.fizzbuzz(9)).to eq('fizz')
      expect(solver.fizzbuzz(12)).to eq('fizz')
    end

    it 'returns "buzz" when the input is divisible by 5' do
      solver = Solver.new
      expect(solver.fizzbuzz(5)).to eq('buzz')
      expect(solver.fizzbuzz(10)).to eq('buzz')
      expect(solver.fizzbuzz(20)).to eq('buzz')
    end

    it 'returns "fizzbuzz" when the input is divisible by both 3 and 5' do
      solver = Solver.new
      expect(solver.fizzbuzz(15)).to eq('fizzbuzz')
      expect(solver.fizzbuzz(30)).to eq('fizzbuzz')
      expect(solver.fizzbuzz(45)).to eq('fizzbuzz')
    end

    it 'returns the input number as a string for other cases' do
      solver = Solver.new
      expect(solver.fizzbuzz(2)).to eq('2')
      expect(solver.fizzbuzz(7)).to eq('7')
      expect(solver.fizzbuzz(13)).to eq('13')
    end
  end
end
