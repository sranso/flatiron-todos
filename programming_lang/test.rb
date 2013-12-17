require "awesome_print"
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

new_languages = {}#new container

languages.each do |key, hash|
  hash.each do |key2, hash2|
    new_languages[key2] ||= hash2
    new_languages[key2][:style] ||= []
    new_languages[key2][:style] << key
  end
end

ap new_languages
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

