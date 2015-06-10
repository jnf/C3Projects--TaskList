module TaskList
  class Queries < TaskList::Database
    def test_insert
      statement = "insert into tasks (name, description) values (? ,?)"
      values = ["Taco Lunch", "Exactly what it sounds like."]

      query! statement, values
    end
  end
end
