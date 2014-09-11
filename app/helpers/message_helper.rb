module MessageHelper

  def status_read(message)
    if message.read?
      "read"
    else
      "unread"
    end
  end
end
