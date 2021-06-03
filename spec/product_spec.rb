require_relative '../lib/product'
RSpec.describe Product do
  describe ".initialize" do
    context "インスタンスが生成された時" do    
      let(:product_params) {{ name: "トマト", price: 100 }}
      let(:product) {product = Product.new(product_params)}
      it "商品の@nameが，product_paramsの名前と等しいこと" do        
        expect(product.name).to eq "トマト"
      end
      it "商品の@priceが，product_paramsの金額と等しいこと" do
        expect(product.price).to eq 100   
      end
    end
  end
end