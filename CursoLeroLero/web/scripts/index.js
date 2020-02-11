import { App } from './app.js'
import CardCurso from './CardCurso.js'

class Curso {
	constructor(title, desc, id) {
		this.title = title
		this.desc = desc
		this.id = id
	}
}

const cursos = [
	new Curso(
		'Introdução a Viagem',
		'Aprenda a fazer trilhas, mochilões, a descolar passagens promocionais de madrugada e muito mais',
		1
	),
	new Curso(
		'Feeds Conceituais',
		'Nesse módulo, seu lanche vira uma obra de arte pronta pra ser consumida não só por você mas também pelos seus seguidores.',
		2
	),
	new Curso(
		'Redação breve',
		'Nunca mais passe a vergonha de não ter uma opinião flamejante. Aprenda a expressar seus pensamentos nas redes sociais',
		3
	)
]

App('.cursos', cursos, CardCurso)
