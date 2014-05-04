require_relative '../main'

class Fetcher
  def pages_left
    most_recent_id - latest_stored_id
  end

  def pages_total
    most_recent_id
  end

  def pages_fetched
    latest_stored_id
  end
end
