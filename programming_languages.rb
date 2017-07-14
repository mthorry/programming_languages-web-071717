
def reformat_languages(languages)
  new_hash = {}

  languages.each do |language_class, values|
    # language_class = :oo;  values = {:ruby=>{...}}

    values.each do |language, info|
      # language = :ruby;  info = {:type=>"interpreted"}

      info.each do |type, spec|
        # type = :type;  spec = "interpreted"

          if new_hash[language].nil?
            new_hash[language] = {}
          end

          new_hash[language][:style] ||= [] #creates new :style key
          new_hash[language][:style] << language_class #adding :language_class into new style array which is located HERE in bottom level of hash.

          if new_hash[language][type].nil?
            new_hash[language][type] = spec
          end

      end
    end
  end
new_hash
end


# new_hash = {}
# languages.each do |language_class, values|
#    new_hash[language_class] = values
#   values.each do |language,type|
#      language
#     type.each do |type, types|
#        type
#        types
#     end
#   end
# end