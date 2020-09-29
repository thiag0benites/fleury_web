class DetalhesPage < SitePrism::Page

    # Elementos
    element :h1_localizacao, :xpath, "//h1[@class='typographycomponentstyle__H1-sc-1oox73n-1 lomAMa']"
    #--------------------------------------------------------------------------------------------------#

    # Métodos
    # Aguarda detalhes da unidade selecionada ser apresentada
    def aguarta_localizacao_visivel
        sleep 2
        wait_until_h1_localizacao_visible
    end

end