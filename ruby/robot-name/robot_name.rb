class Robot
  attr_reader :name

  @@names = []

  def self.forget
    # if @@names == [0]
      # @@names = []
      (65..90).each do |letter1|
        (65..90).each do |letter2|
          (0..9).each do |number1|
            (0..9).each do |number2|
              (0..9).each do |number3|
                @@names << "#{letter1.chr}#{letter2.chr}#{number1}#{number2}#{number3}"
              end
            end
          end
        end
      end
    # end
  end

  def initialize
    @name = random_name
  end

  def random_name
    new_name = @@names.delete_at(rand(@@names.length))
    new_name
  end

  def reset
    old_name = @name
    @name = random_name
    @@names << old_name
  end
end