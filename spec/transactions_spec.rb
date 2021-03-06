require 'spec_helper'

describe Bitso::UserTransactions do
  before { setup_bitso }

  describe :all, vcr: {cassette_name: 'bitso/user_transactions/all'} do
    subject { Bitso.user_transactions.all }
    its(:count) { should == 47 }
    context "first transaction" do
      subject { Bitso.user_transactions.all.first }
      it { should be_kind_of(Bitso::UserTransaction) }
      its(:btc) { should == "-3.00781124" }
      its(:btc_usd) { should == "0.00" }
      its(:datetime) { should == "2013-09-26 13:46:59" }
      its(:fee) { should == "0.00" }
      its(:order_id) { should be_nil }
      its(:type) { should == 1 }
      its(:usd) { should == "0.00" }
    end
  end

end

describe Bitso::Transactions do
  before { setup_bitso }

  describe :all, vcr:{cassette_name: 'bitso/transactions'} do
    subject { Bitso.transactions }
    it { should be_kind_of Array }
  end

end
