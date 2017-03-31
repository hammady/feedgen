module ChannelsHelper
  # from http://stackoverflow.com/questions/4136248
  def humanize_time(secs)
    return "" if secs.nil?
    [[60, :s], [60, :m], [24, :h], [1000, :d]].map{ |count, name|
      if secs > 0
        secs, n = secs.divmod(count)
        "#{n.to_i}#{name}"
      end
    }.compact.reverse.join(' ')
  end

  # Fixed version of https://gist.github.com/260184
  def humanize_size(number)
    return nil if number.nil?

    storage_units_format = '%n %u'

    if number.to_i < 1024
      unit = number > 1 ? 'Bytes' : 'Byte'
      return storage_units_format.gsub(/%n/, number.to_i.to_s).gsub(/%u/, unit)
    else
      max_exp  = STORAGE_UNITS.size - 1
      number   = Float(number)
      exponent = (Math.log(number) / Math.log(1024)).to_i # Convert to base 1024
      exponent = max_exp if exponent > max_exp # we need this to avoid overflow for the highest unit
      number  /= 1024 ** exponent

      unit = STORAGE_UNITS[exponent]
      return storage_units_format.gsub(/%n/, number.to_i.to_s).gsub(/%u/, unit)
    end
  end

end
