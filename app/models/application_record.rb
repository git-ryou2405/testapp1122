class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  
  # logger
  def debug_log(argument)
    Rails.application.config.another_logger.debug(argument)
  end
end
