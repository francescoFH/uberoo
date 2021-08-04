require 'ordersystem'

describe OrderSystem do
  let(:dish) { double :dish }
  let(:price) { double :price }
  let(:item) { { dish: dish, price: 1 }}
  let(:takeaway) { TakeawayKitchen.new.menu }

  it 'returns the menu from the TakeawayKitchen' do
    expect(subject.menu).to eq takeaway
  end

  it 'initializes with an empty order' do
    expect(subject.my_order).to be_empty
  end

  describe '#view_menu' do
    it 'returns a hash' do
      expect(subject.view_menu).to include({ dish: be_an(String), price: be_an(Integer) })
    end
  end

  describe '#add_to_order' do
    it { is_expected.to respond_to(:add_to_order).with(2).argument }

    it 'increases order count' do
      subject.menu << item
      subject.add_to_order(dish)
      expect(subject.my_order.count).to eq 1
    end
  end
end
