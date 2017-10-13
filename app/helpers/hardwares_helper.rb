module HardwaresHelper
	def formata_venda(hardware)
		if hardware.promocao?
			content_tag(:strong, "Mega Promoção!")
		else
			content_tag(:strong, "Em OFF")
		end
	end

	def imagem(hardware)
		if hardware.poster.blank?
			image_tag('semImagem.jpg')
		else
			image_tag(hardware.poster)

		end	
	end
end
