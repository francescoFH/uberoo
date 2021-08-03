require 'takeaway_kitchen'

describe TakeawayKitchen do

  it { is_expected.to respond_to :return_menu }

  it 'has a menu' do
    expect(subject.menu).not_to be_empty
  end
end
