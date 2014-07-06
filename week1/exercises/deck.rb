class Deck

  attr_accessor :cards

  def initialize
    @cards = (1..52).to_a << "A" << "B"
    @alphabet = { :A => 1, :B => 2, :C => 3, :D => 4, 
    :E => 5, :F => 6, :G => 7, :H => 8, :I => 9, 
    :J => 10, :K => 11, :L => 12, :M => 13, :N => 14, 
    :O => 15, :P => 16, :Q => 17, :R => 18, :S => 19, 
    :T => 20, :U => 21, :V => 22, :W => 23, :X => 24, 
    :Y => 25, :Z => 26 }
  end

  def move_joker_a
    move_card_down(@cards.index("A"))
  end

  def move_joker_b
    2.times { move_card_down(@cards.index("B"))}
  end

  def triple_cut
    t_cut = @cards[0, find_top_joker]
    @cards = @cards - t_cut
    @cards = (@cards << t_cut).flatten
  end

  def count_cut
    card_value = @cards.last
    if card_value.instance_of? String
      card_value = 53
    end
    bottom_cut = @cards[0, card_value]
    @cards = @cards.drop(bottom_cut.count)
    @cards = @cards.insert((@cards.count - 1), bottom_cut).flatten
  end

  def find_top_joker
    a_index = @cards.index("A")
    b_index = @cards.index("B")
    if a_index > b_index 
      b_index
    else
      a_index
    end
  end

  def move_card_down(index)
    if index == 53
      @cards.insert(1, @cards.delete_at(index))
    else
      @cards.insert((index + 1), @cards.delete_at(index))
    end
  end


  def get_output_letter
    n = @cards.first
    n = 53 if n.instance_of? String
    output = @cards[n]
    if output.instance_of? String
      nil
    else
      output
    end
  end


end

