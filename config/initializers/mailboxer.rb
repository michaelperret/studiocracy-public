Mailboxer.setup do |config|

  #Configures the methods needed by mailboxer
  config.email_method = :mailboxer_email
  config.name_method = :mailboxer_name
  config.uses_emails = false

end