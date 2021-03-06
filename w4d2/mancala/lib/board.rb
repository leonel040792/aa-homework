class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1=name1
    @name2=name2
    @cups=Array.new(14)
    place_stones

    
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    @cups[0...6].map!{|ele| 4}
    @cups[7...-1].map!{|ele| 4}

  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" if @cups[start_pos]==nil
    raise "Starting cup is empty" if @cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)
    @cups[start_pos]
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end
