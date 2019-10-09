class Bitmap
  def initialize(filename)
    @filename = filename
    puts "loadin the image"
  end

  def draw
    puts "Drawing the image"
  end
end

class LazyBitmap
  def initialize(filename)
    @filename = filename
    @bitmap = nil
  end

  def draw
    @bitmap ||= Bitmap.new(@filename)
  end
end

def draw_image(image)
  puts 'about to draw'
  image.draw
  puts 'Done'
end
