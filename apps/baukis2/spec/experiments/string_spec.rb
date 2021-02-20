require "spec_helper"

describe String do
    describe "#<<" do
        example "文字の追加" do
            s = "ABC"
            expect {s << nil}.to raise_error(TypeError)
        end
        example "文字の追加" do
            s = "ABC"
            s << "BA"
            expect(s.size).to eq(5)
        end
    end
end