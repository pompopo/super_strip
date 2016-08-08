require 'super_strip/version'

# Special version of strip methods to remove special white spaces
class String
  def super_lstrip
    split('').drop_while do |point|
      SuperStrip::WHITE_SPACES.include?(point)
    end.join
  end

  def super_rstrip
    reverse.super_lstrip.reverse
  end

  def super_strip
    super_lstrip.super_rstrip
  end
end

# define special white spaces
module SuperStrip
  WHITE_SPACES = %W(
    \u0009
    \u0020
    \u00A0
    \u11A3
    \u11A4
    \u11A5
    \u11A6
    \u11A7
    \u1680
    \u180E
    \u2000
    \u2001
    \u2002
    \u2003
    \u2004
    \u2005
    \u2006
    \u2007
    \u2008
    \u2009
    \u200A
    \u200B
    \u202F
    \u205F
    \u2060
    \u3000
    \u3164
    \uFEFF
  ).freeze
end
