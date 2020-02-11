export default function CardCurso({ title, desc, id }) {
	return `<article class="col d-flex justify-content-center">
    <div
        class="card bg-dark text-light border border-tertiary my-3"
        style="width: 18rem;"
    >
        <img
            src="../../assets/cursos/curso${id}.jpg"
            class="card-img-top"
            alt="${title}"
        />
        <div class="card-body">
            <h5 class="card-title logo">${title}</h5>
            <p class="card-text">
                ${desc}
            </p>
            <a href="#" class="btn btn-primary">Ver curso</a>
        </div>
    </div>
</article>`
}
