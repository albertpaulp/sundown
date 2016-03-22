require 'sundown'

describe Sundown::Weather do
  it 'Temp. in kodakara should be a float with using Weather class' do
    expect(Sundown::Weather.temperature('680689')).to be_kind_of(Float)
  end
end

describe Sundown::Location do
  it 'Temp. in kodakara should be a float with using Location class' do
    location = Sundown::Location.new('680689')
    expect(location.temperature).to be_kind_of(Float)
  end
end
