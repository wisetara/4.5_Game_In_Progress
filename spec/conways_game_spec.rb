require 'rspec'
require 'conways_game'
require 'Board'

describe 'Space' do
  describe '#initialize' do
    it 'is initialized as an instance of Space' do
      test_space = Space.new(1, 2)
      test_space.should be_an_instance_of Space
    end
  end

  describe '.create' do
    it 'creates an instance of space' do
      test_space = Space.create(1, 2)
      test_space.x_coord.should eq 1
      test_space.y_coord.should eq 2
    end
  end
end

describe 'Board' do
  describe '#initialize' do
    it 'is initialized as an instance of Board' do
      test_board = Board.new(50, 50)
      test_board.should be_an_instance_of Board
      test_board.spaces.length.should eq 2500
    end
  end

  describe '.create' do
    it 'creates an instance of a board' do
      test_board = Board.create(50, 50)
      test_board.spaces[459].x_coord.should eq 10
      test_board.spaces[459].y_coord.should eq 10
    end
  end
end
