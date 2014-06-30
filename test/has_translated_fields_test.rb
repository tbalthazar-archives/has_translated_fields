require 'test_helper'

class HasTranslatedFieldsTest < ActiveSupport::TestCase
  test "truth" do
    assert_kind_of Module, HasTranslatedFields
  end

  test "has_translated_fields method defined for AR models" do
    assert Content.new
  end

  test "content has title and body methods" do
    c = Content.new
    c.title_fr = "Titre"
    c.title_en = "Title"
    c.body_fr = "Corps"
    c.body_en = "Body"

    I18n.locale = :en
    assert c.title=="Title"
    assert c.body=="Body"

    I18n.locale = :fr
    assert c.title=="Titre"
    assert c.body=="Corps"
  end
end
