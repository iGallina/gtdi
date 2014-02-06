require 'nokogiri'

@xml = Nokogiri::XML(File.open("../assets/xml_srd/pb-entidade.xml"))
@canais = @xml.xpath("//canal")
@contador = @canais.size
@canais.each do |canal|
  @row = []
  canal.children().each do |colum|

    break if colum.name == "idtplanobasico" and colum.text?
    @row << colum.text
  end
  puts @row
  @contador -= 1
  puts @contador
end
