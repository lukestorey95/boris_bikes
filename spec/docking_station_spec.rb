describe DockingStation do
  describe '#initialize' do
    it 'should take an argument' do
      expect(DockingStation).to respond_to(:new).with(1)
    end
  end

  describe '#capacity' do
    it 'responds' do
      expect(subject).to respond_to(:capacity)
    end
  end

  describe '#release_bike' do
    it 'responds' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    context 'when there are no bikes' do
      it 'raises an error' do
        expect {subject.release_bike}.to raise_error 'No bikes available'
      end
    end
  end

  describe '#working?' do
    it 'gets a bike and tests if it is working' do
      station = DockingStation.new
      bike = Bike.new
      working_bike = bike.working?
      expect(bike).to be_truthy
    end
  end

  describe '#dock' do 
    it 'responds' do
      expect { subject.to respond_to(:dock).with(1).argument }
    end

    context 'when dock is full' do
      it 'raises error' do
        DockingStation::DEFAULT_CAPACITY.times { subject.dock(Bike.new) }
        expect {subject.dock Bike.new}.to raise_error 'Dock is full'
      end
    end

    it 'docks the bike passed as an argument' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq [bike]
    end

    it 'checks if there is a bike docked' do
      bike = Bike.new
      docked_bike = subject.dock(bike)
      expect(docked_bike)
    end
  end

  it 'is expected to respond to bike' do 
    expect { subject.to respond_to(:bikes)}
  end
end 