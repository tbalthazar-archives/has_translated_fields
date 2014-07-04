# has_translated_fields

## Installation
```
gem 'has_translated_fields', :git => 'https://github.com/tbalthazar/has_translated_fields'
```

## Usage

Let's say you have a `Content` model with a `title_en`, `title_fr`, `body_en` and `body_fr` fields.
Add this line to your model :
```
has_translated_fields [:title, :body]
```
and in your views, you'll be able to do :
```
<h1><%= @content.title %></h1>
<%= @content.body %>
```

Depending on the current `I18n.locale` value, the corresponding _fr|_en methods will be called.

## License

This project rocks and uses MIT-LICENSE.
