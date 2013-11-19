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
languages.each do |style, lang|#look at style and language
  lang.each do |name, lang_hash|#look at each lang name and its hash
    new_languages[name] = {} unless new_languages[name]#enter each lang into the container w/ value of {}
    lang_hash.each do |type, value|#look at type and value w/in each hash
      new_languages[name][type] = value
      if style == :oo
        new_languages[name][:style] = :oo
      elsif style == :functional
        new_languages[name][:style] = :functional
      end
    end
  end
end
puts new_languages
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

