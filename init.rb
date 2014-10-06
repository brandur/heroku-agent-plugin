# Don't activate if the client is already specifying a proxy.
if ENV["HEROKU_AGENT_SOCK"] && !ENV["HTTP_PROXY"]
  ENV["HTTP_PROXY"] = "unix://#{File.expand_path(ENV["HEROKU_AGENT_SOCK"])}"
end
