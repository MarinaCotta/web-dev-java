export default function CardAluno({ nome, comentario, id }) {
	return `<article class="col d-flex justify-content-center">
  <div
  class="card bg-dark text-light border border-tertiary my-3"
  style="width: 18rem;"
>
  <div class="card-body">
    <img
      src="../../assets/alunos/${id}.jpeg"
      class="card-img-top"
      alt="..."
    />
    <blockquote class="blockquote pt-3 mb-0">
      <p>
        ${comentario}
      </p>
      <footer class="blockquote-footer logo">
        ${nome}
      </footer>
    </blockquote>
  </div>
</div>
</article>`
}
