require 'fizzbuzz'

describe 'fizzbuzz' do
	it 'returns "fizz" when passed 3' do
		expect(fizzbuzz(3)).to eq 'fizz'
	end

	100.times do |i|
		it "returns 'buzz' when passed a multiple of 5, number: #{i}" do
			expect(fizzbuzz(i)).to eq 'buzz' if (i % 5 == 0) && (i % 3 != 0)
		end

		it "returns 'fizz' when passed a multiple of 3, number: #{i}" do
			expect(fizzbuzz(i)).to eq 'fizz' if (i % 3 == 0) && (i % 5 != 0)
		end

		it "returns 'fizzbuzz' when passed a multiple of 5 && 3, number: #{i}" do
			expect(fizzbuzz(i)).to eq 'fizzbuzz' if (i % 3 == 0) && (i % 5 == 0)
		end

		it "returns #{i} when passed a number that is not divisible by 3 and 5" do
			expect(fizzbuzz(i)).to eq i if (i % 3 != 0) && (i % 5 != 0)
		end
	end
end
