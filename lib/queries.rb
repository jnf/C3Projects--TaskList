module TaskList
  class Queries < TaskList::Database
    def test_insert
      statement = "insert into tasks (name, description) values (? ,?)"
      values = ["Taco Lunch", "Exactly what it sounds like."]

      query! statement, values
    end

    def count_tasks
      statement = "select count(*) from tasks;"
      count_array = query! statement
      count_array.first.first # nesting is weird; this shows up as [[3]]
    end
  end
end
