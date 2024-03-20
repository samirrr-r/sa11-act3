def extract_urls(text)
  pattern = /(https:\/\/w{3}?.[^.]+.[^. ]+|http:\/\/w{3}?.[^.]+.[^. ]+|ftp:\/\/w{3}?.[^.]+.[^. ]+)/
  puts text.scan(pattern)
end

sample_text = "Visit our site at http://www.example.org for more information.
Check out our search page at https://example.com/search?q=ruby+regex.
Don’t forget to ftp our resources at ftp://example.com/resources."

extract_urls(sample_text)
