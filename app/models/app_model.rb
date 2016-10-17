class AppModel

  def initialize
    @requests = {}
  end

  def requests
    @requests
  end

  def set_request(query_string)
    key = get_key(query_string).to_sym
    value = get_value(query_string)
    @requests[key] = value
  end

  private

  def get_key(query_string)
    query_string[0...query_string.index("=")]
  end

  def get_value(query_string)
    query_string[(query_string.index("=") + 1)..-1]
  end

end
