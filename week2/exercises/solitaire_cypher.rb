module SolitaireCypher
  def encyphen stuff
    stuff = remove_non_A_to_Z_from stuff
    stuff = change_case stuff
    split_into_5_char_groups stuff
  end

  def remove_non_A_to_Z_from text
    text.scan(/[a-zA-Z]*/).join
  end

  def change_case text
    text.upcase
  end

  def split_into_5_char_groups text
    characters = text.reverse.chars
    groups = []
    until characters.empty?
      word = get_5_group characters.pop(5)
      groups << word
    end
    groups.join(" ")
  end

  def get_5_group five_chars
    word = five_chars.join.reverse
    until word.size == 5
      word << "X"
    end
    word
  end
end

require "minitest/autorun"

describe "Solitaire Cypher!!" do
  include SolitaireCypher

 #Discard any non A to Z characters, and uppercase all remaining letters. Split the message into five character groups, using Xs to pad the last group, if needed. If we begin with the message "Code in Ruby, live longer!", for example, we would now have:

    it "should_remove_non_A_to_Z_characters" do
      encyphened = remove_non_A_to_Z_from "!$_ARhello"
      encyphened.must_equal "ARhello"
    end

    it "should upercase all letters" do
      encyphened = change_case "you are my sunshine"
      encyphened.must_equal "YOU ARE MY SUNSHINE"
    end

    it "should split the message into 5 character groups" do
      encyphened = split_into_5_char_groups "hellohellohello"
      encyphened.must_equal "hello hello hello"
    end

    it "should pad the last group with Xs when splitting the string " do
      encyphened = split_into_5_char_groups "hellorr"
      encyphened.must_equal "hello rrXXX"
    end

    it "should encode 'Code in Ruby, live longer!' properly" do
      encyphened = encyphen "Code in Ruby, live longer!"
      encyphened.must_equal "CODEI NRUBY LIVEL ONGER"
    end

    # Use Solitaire to generate a keystream letter for each letter in the message. This step is detailed below, but for the sake of example let's just say we get:
    # DWJXH YRFDG TMSHP UURXJ

 end