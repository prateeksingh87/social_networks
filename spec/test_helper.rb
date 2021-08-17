VCR.configure do |c|
  c.allow_http_connections_when_no_cassette = false
  c.cassette_library_dir = File.expand_path('cassettes', __dir__)
  c.hook_into :webmock
  c.ignore_request { ENV['DISABLE_VCR'] }
  c.ignore_localhost = true
  c.default_cassette_options = {
    record: :new_episodes
  }
end