module ErrorappNotifier
  ROOT_PATH = File.dirname(__FILE__)
  autoload :Config,            "#{ROOT_PATH}/errorapp_notifier/config"
  autoload :ErrorNotification,  "#{ROOT_PATH}/errorapp_notifier/error_notification"
  autoload :ErrorNotifier,      "#{ROOT_PATH}/errorapp_notifier/error_notifier"
  autoload :ErrorMiddleware,    "#{ROOT_PATH}/errorapp_notifier/error_middleware"
end
