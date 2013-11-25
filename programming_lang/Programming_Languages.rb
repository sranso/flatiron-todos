require "awesome_print"
require "debugger"
# Organizing Nested Data

# I have a collection of Programming Languages.  
languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}
# I would like you to reformat the nested structure to be of the following form
# {
#   :ruby => {
#     :style => [:oo],
#     :type => "interpreted"
#   },
#   :python => {
#     :style => [:oo],
#     :type => "interpreted"
#   }
#   etc etc
# }

new_languages = {}#new container
languages.each do |style, lang|# style is oo funcitonal, lang is ruby = {} java = {} etc
  # debugger
  lang.each do |lang_name, type_hash|
    # debugger
    type_hash.each do |type, quality|
      # debugger
      new_languages[lang_name] ||= {}
      new_languages[lang_name][:style] ||= []
      new_languages[lang_name][:style] << style
      new_languages[lang_name][type] = quality
    end
  end
end
ap new_languages

