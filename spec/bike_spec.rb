# frozen_string_literal: true

describe Bike do
  subject(:bike) { Bike.new }

  describe '#working?' do
    context 'when it is working' do
      it 'return true' do
        expect(bike).to be_working
      end
    end

    context 'when it is not working' do
      it 'return false' do
        bike.report_broken
        expect(bike).to_not be_working
      end
    end
  end

  describe '#report_broken' do
    it 'responds' do
      expect(bike).to respond_to(:report_broken)
    end
  end
end
