require 'active_support/core_ext/object/blank'

# Number of pots must be even
class PotsGame
  attr_accessor :cache, :pots

  def initialize(pots: [])
    @pots = pots
    @cache = []
    pots.length.times do
      row = []
      pots.length.times do
        row << nil
      end

      cache << row
    end
  end

  def maximize_gold(first_posn: 0, last_posn: pots.length - 1)
    raise ArgumentError unless pots.is_a?(Array) && pots.present?

    first_pot = pots[first_posn]
    last_pot = pots[last_posn]

    return cache[first_posn][last_posn] if cache[first_posn][last_posn].present?
    return first_pot if first_posn == last_posn
    return [first_pot, last_pot].max if first_posn + 1 == last_posn

    pick_first = pots[first_posn] + [maximize_gold(first_posn: first_posn + 2, last_posn: last_posn), maximize_gold(first_posn: first_posn + 1, last_posn: last_posn - 1)].min
    pick_last = pots[last_posn] + [maximize_gold(first_posn: first_posn + 1, last_posn: last_posn - 1), maximize_gold(first_posn: first_posn, last_posn: last_posn - 2)].min

    result = [pick_first, pick_last].max
    cache[first_posn][last_posn] = result

    result
  end
end
