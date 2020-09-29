Entao('valido o a localizacao apresentada') do
    @detalhes = DetalhesPage.new
    @detalhes.aguarta_localizacao_visivel
    expect(@detalhes.h1_localizacao.text).to have_text(@@localizacao)
end