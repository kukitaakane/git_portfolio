require "csv"

products_csv = CSV.readlines("db/works.csv")
products_csv.each do |row|
  Work.create(title: row[1], detail: row[2], genre: row[3], created_at: row[4], updated_at: row[5])
end