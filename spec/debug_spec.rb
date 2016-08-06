require 'spec_helper'
require_relative '../lib/deployable/debug'
require_relative '../lib/deployable/version'


describe Deployable::Debug do


  describe 'initial' do

    it 'shoould have a version number' do
      expect( Deployable::Debug::VERSION ).not_to be nil
    end

  end


  describe 'module' do

    it 'should have a .log instance' do
      expect( Deployable::Debug.instance_methods ).to include :log
    end

  end


  describe 'included debug' do

    let(:what) { Class.new { include Deployable::Debug } }

    it 'should have log in the class' do
      wh = what.new
      expect( wh.methods ).to include :log
    end

    it 'should have debug in the class' do
      wh = what.new
      expect( wh.methods ).to include :debug
    end

    it 'should have trace in the class' do
      wh = what.new
      expect( wh.methods ).to include :trace
    end

  end

end
