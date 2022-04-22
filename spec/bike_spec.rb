describe Bike do
  describe '#working?' do
    it 'asks the bike if it is working' do
      bike = Bike.new
      expect(bike).to respond_to(:working?)
    end

    it 'checks if the bike is working' do
      expect(subject.working?).to be_truthy  
    end

    context 'when the bike is reported as broken' do
      it 'should return false' do
        subject.report_broken
        expect(subject.working?).to be_falsey
      end  
    end
  end
    
  describe '#report_broken' do
    it 'reports that the bike is broken' do
      bike = Bike.new
      expect(bike).to respond_to(:report_broken)
    end
  end
end