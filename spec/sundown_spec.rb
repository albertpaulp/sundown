require 'sundown'

describe Sundown::Weather do
  it 'Temp.(Farenheit) in london should be a float' do
    expect(Sundown::Weather.temperature('london')).to be_kind_of(Float)
  end
end

describe Sundown::Weather do
  it 'Temp.(Celcious) in london should be a float' do
    expect(Sundown::Weather.temperature('london', 'c')).to be_kind_of(Float)
  end
end

describe Sundown::Location do
  it 'Temp.(Farenheit) in london should be a float with using Location class' do
    location = Sundown::Location.new('london')
    expect(location.temperature).to be_kind_of(Float)
  end
end

describe Sundown::Location do
  it 'Temp.(Celcious) in london should be a float with using Location class' do
    location = Sundown::Location.new('london')
    expect(location.temperature('c')).to be_kind_of(Float)
  end
end
