f = Nginx::Filter.new
response = f.body
f.body = (response + " world").upcase 
