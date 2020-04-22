require 'docking_station'

describe DockingStation do

  it { expect(DockingStation.new).to respond_to(:release_bike)}

  describe '#release_bike' do
    it "docking station releases a bike" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'returns an error when there is no bike available' do
      expect { subject.release_bike }.to raise_error("There are no bikes available!")
    end
  end

  it 'docks a bike' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it { is_expected.to respond_to(:bike) }

  describe '#dock' do
    it 'returns docked bikes' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bike).to eq bike
    end

    it 'does not allow more than one bike to be docked at once' do
      subject.dock(Bike.new)
      expect { subject.dock(Bike.new) }.to raise_error("This docking station is full!")
    end

  end



end
