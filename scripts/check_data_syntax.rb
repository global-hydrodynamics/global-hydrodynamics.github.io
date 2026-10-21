#!/usr/bin/env ruby
# Validate Jekyll _data YAML and CSV syntax before committing.
require "yaml"
require "csv"

root = File.expand_path("..", __dir__)
files = Dir.glob(File.join(root, "_data", "**", "*.{yml,yaml,csv}")).sort
abort "ERROR: no _data YAML/CSV files found" if files.empty?

failures = []
files.each do |path|
  relative = path.delete_prefix(root + "/")
  begin
    case File.extname(path)
    when ".yml", ".yaml"
      # Parse the complete YAML AST; no object deserialization is necessary.
      Psych.parse_file(path) or raise "empty YAML document"
    when ".csv"
      rows = CSV.read(path, encoding: "bom|utf-8")
      raise "missing CSV header" if rows.empty?
      width = rows.first.length
      rows.each_with_index do |row, index|
        raise "row #{index + 1} has #{row.length} columns; expected #{width}" unless row.length == width
      end
    end
    puts "OK #{relative}"
  rescue StandardError => e
    failures << "#{relative}: #{e.class}: #{e.message}"
    warn "ERROR #{failures.last}"
  end
end
abort "#{failures.length} data file(s) failed validation; do not commit or push." unless failures.empty?
puts "All #{files.length} _data YAML/CSV files passed syntax validation."
