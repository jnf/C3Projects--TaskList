require 'sqlite3'
db = SQLite3::Database.new "db/taskList.db"

# Create a database
statement = db.execute <<-SQL
  create table tasks (
    id integer primary key,
    name text,
    description text,
    completed_at text
  );
SQL

db.close if db
