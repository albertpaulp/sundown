require "codeclimate-test-reporter"
require 'sundown'

CodeClimate::TestReporter.start

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

  describe Sundown::Location do
    it 'Refresh on Location should return nil on @weather' do
      location = Sundown::Location.new('london')
      expect(location.refresh).to eql(nil)
    end
  end
end
