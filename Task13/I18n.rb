=begin

======  I18 Gem ==========
Rails Internationalization (I18n) API

The Ruby I18n (shorthand for internationalization) gem which is shipped with 
Ruby on Rails (starting from Rails 2.2) provides an easy-to-use and extensible 
framework for translating your application to a single custom language other 
than English or for providing multi-language support in your application.

In the process of internationalizing your Rails application you have to:

--Ensure you have support for i18n.
--Tell Rails where to find locale dictionaries.
--Tell Rails how to set, preserve, and switch locales

In the process of localizing your application you'll probably want to do the following three things:

1> Replace or supplement Rails' default locale - e.g. date and time formats, month names,
 Active Record model names, etc.

2> Abstract strings in your application into keyed dictionaries - e.g. flash messages, static text in your views, etc.

3> Store the resulting dictionaries somewhere.