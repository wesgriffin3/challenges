class Image
  
  def initialize(image)
    @image = image
  end

  def blur(man_distance)
    #give all original ones
    #store original index of ones in an array
    man_distance.times do 
      ones = []
      @image.each_with_index do |row, row_num|
        row.each_with_index do |item, col_num|
          if item == 1 
           ones << [row_num, col_num]
          end
        end
      end
      make_ones(ones)
    end
  end

  #[[1,1],[2,3]]
  def make_ones(ones_idx)
    ones_idx.each do |ones|
    #[1,1]
      row = ones[0]
      col = ones[1]
          #up
      if row - 1 < @image.length
        @image[row - 1][col] = 1
      end
  
      #bottom
      if row + 1 < @image.length
        @image[row + 1][col] = 1
      end
  
      #left
      if col - 1 < @image[0].length
        @image[row][col - 1] = 1
      end
  
      #right
      if col + 1 < @image[0].length
        @image[row][col + 1] = 1
      end
    end
  end

  def output_image
    @image.each do |row|
      puts row.join
    end
  end
end

#@image[0][1] = 1
image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 0],
  [0, 0, 0, 0],
  [0, 0, 0, 0],
  [0, 0, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])

    
  image.blur(2)
  image.output_image