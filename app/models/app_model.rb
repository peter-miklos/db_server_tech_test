class AppModel

  def initialize
    @requests = {}
  end

  def requests
    @requests
  end

  def set_kv_pair(params)
    @requests = @requests.merge(params)
  end

  def get_value(key)
    @requests.include?(key) ? @requests[key] : "key not found"
  end
end
