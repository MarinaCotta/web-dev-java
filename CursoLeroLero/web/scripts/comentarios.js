import { App } from './app.js'
import CardAluno from './CardAluno.js'

class Aluno {
	constructor(nome, comentario, id) {
		this.nome = nome
		this.comentario = comentario
		this.id = id
	}
}

const alunos = [
	new Aluno(
		'Marcos',
		'Os instrutores são de outra galáxia! Uso o que aprendi todo o dia.',
		7
	),
	new Aluno(
		'Marina',
		'Top demais, sem palavras. Só tenho a agradecer ao Curso Lero Lero.',
		9
	),
	new Aluno('Lucas', 'A limpeza podia melhorar, tirando isso 4 estrelas', 12),
	new Aluno(
		'Rebeca',
		'A instrutora Han teve o maior impacto sobre minha trajetória. Amei demais!!!',
		10
	)
]

App('.alunos', alunos, CardAluno)
