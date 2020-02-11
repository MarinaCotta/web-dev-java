//  Definição da função que utiliza o jQuery Validator para validar o formulario
// form_selector (seleciona o formulário para ser validado)
// form_config (objeto que configura as regras e as mensagens de validação)
function validacao(form_selector, form_config) {
	$(form_selector).validate(form_config)
}

// Definição da função que cria um array de componentes com infos especificadas
function criar_cards(infos, component) {
	const cards = []
	for (let info of infos) {
		let new_card = component(info)
		cards.push(new_card)
	}
	return cards
}
// Definição da função que adiciona o array de cards no seletor especificado
function renderizar(element, cards) {
	for (let card of cards) {
		$(element).append(card)
	}
}
// Função que compõe a criação de cards e renderização
function App(element, infos, component) {
	renderizar(element, criar_cards(infos, component))
}

// Exporta as funções para serem usadas em outros módulos .js
export { App, validacao }
