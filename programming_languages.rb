def reformat_languages(languages)
  # your code here
  new_hash = {}
    languages.each do |styles, each_language|
      each_language.each do |language, type_hash|
        type_hash.each do |type, type_value|
          if new_hash[language].nil?
            new_hash[language] = {}
          end
          new_hash[language][:style] ||= []
          new_hash[language][:style] << styles
          if new_hash[language][type].nil?
            new_hash[language][type] = type_value
          end
        end
      end
    end
  new_hash
end
