describe DockingStation do
  subject(:docking_station) { DockingStation.new }
  let(:bike) { instance_double("Bike", working?: true) }
  
  def fill_docking_station
    DockingStation::DEFAULT_CAPACITY.times { docking_station.dock(bike) }
  end

  describe '#initialize' do
    subject { DockingStation}
    it { should respond_to(:new).with(1) }
  end

  describe '#capacity' do
    it { should respond_to :capacity }
  end

  describe '#release_bike' do
    it { should respond_to :release_bike }

    context 'when not empty' do
      it 'return a bike' do
        docking_station.dock(bike)
        expect(docking_station.release_bike).to eq bike
      end

      it 'return a working bike' do
        expect(bike).to be_working
      end
    end

    context 'when empty' do
      it 'raise an error' do
        expect {docking_station.release_bike}.to raise_error 'No bikes available'
      end
    end
  end

  describe '#dock' do 
    it { should respond_to(:dock).with(1).argument }

    it 'dock the bike' do
      expect(docking_station.dock(bike)).to include bike
    end

    context 'when dock is full' do
      it 'raise error' do
        fill_docking_station
        expect{ docking_station.dock(bike) }.to raise_error 'Dock is full'
      end
    end
  end

  describe '#bikes' do
    it { should respond_to :bikes}
  end
end 