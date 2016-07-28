require 'super_strip/version'

# Utility module to remove special white spaces
module SuperStrip
  class << self
    def lstrip(str)
      str.split('').drop_while do |point|
        WHITE_SPACES.include?(point)
      end.join
    end

    def rstrip(str)
      lstrip(str.reverse).reverse
    end

    def strip(str)
      lstrip(rstrip(str))
    end
  end

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
