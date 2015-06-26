require 'singleton'

class Translate
  include Singleton
  #jak mam require singleton & include - to co jest w
  #konstruktorze wykonuje sie tylko RAZ

  def initialize
    @db = File.read('26czerwiec_tekst.txt').split("\n").map { |elem| elem.split(':') }.to_h
    #p @db
  end

  def trans(text)
    #szukam nawiasow kwadratowych podwojnych - regex - znalesc wszystko co jest w naw [[]]
    #potem petla i zamieniam klucz trnaslacji na to co jest w bazie
    #podstawiam do textu usuwam nawiasy kwadratowe
    # w+   - nie obejmuje KROPEK - tylko jakis zakres znakow

    #flatten , reduce?  (znalesc w jakim konteksie uzywalismy)  - zmniejsza o wymiar tablice
    translate_keys = text.scan(/\[\[([a-z0-9\.\_]+)\]\]/).flatten!  #zwykle nawiasy - GRUPOWANIE

    translate_keys.each do |translation_key|
      # jesli nie nil - zamieniac to co jest w tekscie na ta translacje
      unless @db[translation_key].nil?
        text = text.gsub("[[#{translation_key}]]", @db[translation_key])
      else
        text = text.gsub("[[#{translation_key}]]", "")
      end
    end


    #przejsc petla po tablicy translate_keys
    #jak znajde klucz jaki mamy w bazie
    #jak mamy to zamienic w oryginalnym tekscie
    #moj klucz na zamieniona translacje
    # na to co znajde w bazie gsubem
    text
  end

end


# Napisz mechanizm translacji, ktory:
#   1. wczytywał plik z translacjami - plik w formacie:
#  moj_klucz_translacji_1:Moje tłumaczenie 1
# moj_klucz_translacji_2:Moje tłumaczenie 2
# moj_klucz_translacji_3:Moje tłumaczenie 3
#
# 2. wczytywał (np. po przez funkcje) źródło, które trzeba
# przetłumaczyć i na podstawie bazy (pliku z translacjami)
# będzie te źródło parsował i tłumaczył.
#
# UWAGA: program ma być SINGLETONEM (tylko raz chcemy wczytać baze z translacjami)
# np.
#
#     BAZA:
#     t.it_is_text:Jest godzina
# t.morning_text: rano
#
# UŻYCIE PROGRAMU:
#            Translate.instance.trans("[[t.it_is_text]] 8:00 [[t.morning_text]]")
#    # => Jest godzina 8.00 rano
#pusty:
# [26/06/15 07:47:52] Piotr Krajewski: Translate.instance.trans("[[t.it_is_text_not_exists]] 8:00 [[t.morning_text_exists]]”)
# [26/06/15 07:48:00] Piotr Krajewski: “ 8:00 “
#
# Napisać program i testy!!!
