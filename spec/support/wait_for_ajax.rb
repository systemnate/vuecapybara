module WaitForAjax
  def wait_for_ajax(max_wait_time=30)
    p '*' * 100
    p max_wait_time
    p '*' * 100
    Timeout.timeout(max_wait_time) do
      while pending_ajax_requests?
        sleep 0.1
      end
    end
  end

  def pending_ajax_requests?
    page.driver.network_traffic.collect(&:response_parts).any?(&:empty?)
  end
end

RSpec.configure do |config|
  config.include WaitForAjax
end
