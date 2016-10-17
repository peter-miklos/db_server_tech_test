class AppModel

  def initialize
    @requests = {}
  end

  def requests
    @requests
  end

  def set_kv_pair(query_string)
    key = get_key_from_query_string(query_string)
    value = get_value_from_query_string(query_string)
    @requests[key] = value
  end

  def get_value(key)
    @requests.include?(key) ? @requests[key] : "key not found"
  end

  private

  def get_key_from_query_string(query_string)
    query_string[0...query_string.index("=")]
  end

  def get_value_from_query_string(query_string)
    query_string[(query_string.index("=") + 1)..-1]
  end

end
