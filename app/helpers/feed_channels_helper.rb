module FeedChannelsHelper
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

    number_to_human_size number
  end

end
