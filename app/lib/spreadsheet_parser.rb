class SpreadsheetParser
  def self.parse(file)
    spreadsheet = Roo::Excelx.new(file)
    spreadsheet.parse
  end
end
