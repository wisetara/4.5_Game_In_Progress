class Space
  attr_reader(:x_coord, :y_coord)

  def initialize(x_coord, y_coord)
    @x_coord = x_coord
    @y_coord = y_coord
    @state = false
  end

  def Space.create(x_coord, y_coord)
    new_space = Space.new(x_coord, y_coord)
  end

  def state(x_coord, y_coord)
    if state == false
      check all neighbors
      if true neighbors == 3
        state = true
      end
    else
      check all neighbors
      if true neighbors < 2
        state == false
      elsif true neighbors >= 2 && <= 3
        state == true
      else
        state == false
      end
    end
  end
end
FOR LATER:

@neighbors = [8]

    @neighbors[0] = [x - 1, y - 1]
    @neighbors[1] = [x, y + 1]
    @neighbors[2] = [x + 1, y - 1]
    @nieghbors[3] = [x - 1, y]
    @neighbors[4] = [x + 1, y]
    @neighbors[5] = [x - 1, y + 1]
    @nieghbors[6] = [x, y + 1]
    @neighbors[7] = [x + 1, y + 1]
