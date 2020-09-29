class UnidadesPage < SitePrism::Page

    # Elementos
    element :select_facilidades, :xpath, "//div[@class='checkbox-selectcomponentstyle__CheckboxSelectPlaceholderStyled-sc-7ktrvg-2 jgzIlF']"
    element :card_unidade, :xpath, "//div[@class='sc-htpNat gridcomponent__ColStyled-sc-8zg10d-2 kCjJNl'][1]//*[@class='typographycomponentstyle__H3-sc-1oox73n-3 caOpMn']"
    #-----------------------------------------------------------------------------------------------------------------------------------------------------------------------#

    # Métodos
    def seleciona_facilidades(facilidades)

        select_facilidades.click
        flag_facilidades_selecionadas = 0

        facilidades = facilidades.split(";") # Cria array separando por ;

        facilidades.each do |facilidade| # interage com a lista de facilidades
            all(:xpath, "//div[@class='checkbox-fieldcomponentstyle__CheckboxFieldStyled-sc-1mdajsk-0 DRDNI']").each do |el|
                if el.text == facilidade # Busca facilidade na lista
                    el.click
                    flag_facilidades_selecionadas += 1 # incrementado toda vez que uma falicidade é selecionada
                end
            end
        end

        # Valida que as facilidades foram selecionadas
        assert_text(flag_facilidades_selecionadas, facilidades.size)

    end

    def ver_detalhes_unidade

        elementos = all(:xpath, "//div[@class='sc-htpNat gridcomponent__ColStyled-sc-8zg10d-2 kCjJNl']").size
        
        # Verifica se a busca retornou resultados
        assert_text(elementos, '0')

        localizacao = card_unidade.text
        card_unidade.click # Clica sempre no primeiro resultado da busca
        
        return localizacao # Retorna localizacao

        # for i in 1..elementos
        #     card = "//div[@class='sc-htpNat gridcomponent__ColStyled-sc-8zg10d-2 kCjJNl'][#{i}]"
        #     puts find(:xpath, "#{card}//*[@class='typographycomponentstyle__H3-sc-1oox73n-3 caOpMn']").text
        # end
    end

end