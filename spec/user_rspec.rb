require 'spec_helper'

RSpec.describe User do
  describe "#greet" do
    subject { user.greet } 
    let(:user) { User.new(name: name, age: age) }

    context "12歳以下の時" do
      let(:name) { "たろう" } 
      let(:age) {12}

      it "ひらがなで答えること" do
        is_expected.to  eq "ぼくはたろうだよ"
      end
    end

    context "13歳より大きい時" do
      let(:name) { "太郎" } 
      let(:age) {14}

      it "漢字で答えること" do
        is_expected.to  eq "僕は太郎です"
      end
    end
  end
end