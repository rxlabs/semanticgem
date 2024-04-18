# frozen_string_literal: true

RSpec.describe SemanticGem::Todo do
  subject(:todo) { SemanticGem::Todo.new }

  describe ".todo" do
    it "returns todo" do
      expect(todo.todo).to be "TODO"
    end
  end
end
