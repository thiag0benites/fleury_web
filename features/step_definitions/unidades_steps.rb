Quando('seleciono {string} no menu principal') do |item|
    @contexto = ContextoPage.new
    @contexto.seleciona_item_menu(item)
end

Quando('marco as {string} desejadas') do |facilidades|
    @unidades = UnidadesPage.new
    @unidades.seleciona_facilidades(facilidades)
end

Quando('clico em Ver detalhes de um dos resultado da busca') do
    @@localizacao = @unidades.ver_detalhes_unidade
end