def parse_invoices(invoice_data)
  pattern = /(^[0-9]{4}-[0-9]{2}-[0-9]{2}).-.([a-zA-Z0-9]{6}).-.(\w+) (\w+).-.(\S+)/
invoice_data.each_line do |invoice|
  match = invoice.match(pattern)
  puts "Date: #{match[1]}, Invoice Number: #{match[2]}, Client: #{match[3]} #{match[4]}, Amount: #{match[5]}"
end
end

invoice_entries = <<-INVOICES
2023-03-01 - INV001 - Acme Corp - $1000
2023-03-02 - INV002 - Beta LLC - $2050
2023-03-03 - INV003 - Gamma Inc - $3500
INVOICES

parse_invoices(invoice_entries)
