class ContextoPage < SitePrism::Page

    # Seleciona item do menu enviado por parâmetro
    def seleciona_item_menu(item)
        find(:xpath, "//*[@id='button-title-desktop-header']/div[text()='#{item}']").click
    end

end