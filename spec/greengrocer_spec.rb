require_relative "../lib/greengrocer"
RSpec.describe Greengrocer do
  describe ".initialize" do
    context "インスタンスが生成された時" do
      let(:product_params) do  
        [
          { name: "トマト", price: 100 },
          { name: "きゅうり", price: 200 }
        ]
      end
      let(:greengrocer) {Greengrocer.new(product_params)}

      it "@productsの要素の数が，product_paramsの要素の数と等しいこと" do
        expect(greengrocer.products.size).to eq 2
      end

      it "@productsの最初の要素の名前が，product_paramsの最初の要素の名前と等しいこと" do
        expect(greengrocer.products[0][:name]).to eq "トマト" 
      end

      it "@productsの最初の要素の金額が，product_paramsの最初の要素の金額と等しいこと" do
        expect(greengrocer.products[0][:price]).to eq 100 
      end
    end
  end
end