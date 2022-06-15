class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length=1
    @game_over=false 
    @seq=[]

  end

  def play
    until @game_over
      take_turn
    end


  end

  def take_turn
    if show_sequence ==require_sequence
      round_success_message
      @sequence_length+=1
    else
      reset_game
      game_over_message
    end
    

  end

  def show_sequence
    add_random_color
  end

  def require_sequence
    puts "Please enter a sequence"
    sequence=gets.chomp
    if sequence!=@seq
      @game_over=true
    end
  end

  def add_random_color
    @seq << COLORS.sample

  end

  def round_success_message
    puts "Keep it up!"
  end

  def game_over_message
    puts "I'm sorry. You lost :("
  end

  def reset_game
    @sequence_length=1
    @game_over=false
    @seq=[]
  end
end
