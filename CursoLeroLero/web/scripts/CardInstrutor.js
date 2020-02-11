export default function CardInstrutor({ title, desc, id }) {
	return `<article class="col d-flex justify-content-center">
  <div class="card bg-dark text-light border border-tertiary my-3" style="width: 18rem;">
    <img src="../../assets/instrutores/${id}.jpeg" class="card-img-top" alt="${title}" />
    <div class="card-body">
      <h4 class="card-title logo">${title}</h4>
      <p class="card-text">${desc}</p>
      <a href="#" class="btn btn-primary">Mais Informações</a>
    </div>
  </div>
</article>`
}
