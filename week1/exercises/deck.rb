class Deck

  attr_accessor :cards

  def initialize
    @cards = (1..52).to_a << "A" << "B"
  end

  def move_joker_a
    move_card_down(@cards.index("A"))
  end

  def move_joker_b
    2.times { move_card_down(@cards.index("B"))}
  end

  def triple_cut
    t_cut = @cards[0, find_top_joker]
  end

  def find_top_joker
    @a_index = @cards.index("A")
    @b_index = @cards.index("B")
    if @a_index > @b_index 
      @b_index
    else
      @a_index
    end
  end

  def move_card_down(index)
    if index == 53
      @cards.insert(0, @cards.delete_at(index))
    else
      @cards.insert((index + 1), @cards.delete_at(index))
    end
  end

end

