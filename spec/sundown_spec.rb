require "codeclimate-test-reporter"


CodeClimate::TestReporter.start
  require 'sundown'

describe Sundown::Weather do
  it 'Temp.(Farenheit) in london should be a float' do
    expect(Sundown::Weather.temperature('london')).to be_kind_of(Float)
  end

  it 'Temp.(Celcious) in london should be a float' do
    expect(Sundown::Weather.temperature('london', 'c')).to be_kind_of(Float)
  end

  it 'Timestamp of london object should be a string' do
    expect(Sundown::Weather.timestamp('london')).to be_kind_of(String)
  end
end

describe Sundown::Location do
  it 'Temp.(Farenheit) in london should be a float with using Location class' do
    location = Sundown::Location.new('london')
    expect(location.temperature).to be_kind_of(Float)
  end

  it 'Temp.(Celcious) in london should be a float with using Location class' do
    location = Sundown::Location.new('london')
    expect(location.temperature('c')).to be_kind_of(Float)
  end

  it 'Refresh on Location should return nil' do
    location = Sundown::Location.new('london')
    expect(location.refresh).to eql(nil)
  end

  it 'Timestamp on Location should return string' do
    location = Sundown::Location.new('london')
    expect(location.timestamp).to be_kind_of(String)
  end
end

