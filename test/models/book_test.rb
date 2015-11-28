require 'test_helper'

class BookTest < ActiveSupport::TestCase
  test "que o nome é obrigatório" do
    book = Book.new(title: "")

    refute book.valid?
  end

  test "titulo e author preenchidos é valido" do
    book = Book.new(title: "Blabla", author: "blbla")

    assert book.valid?
  end
end
