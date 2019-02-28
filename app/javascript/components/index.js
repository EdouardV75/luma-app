  const displayByCategory = (category, results) => {
    const filteredResults = results.filter(result => result.dataset.category == category);
    const ulExperiences = document.querySelector(".results");
    ulExperiences.innerHTML = "";
    filteredResults.forEach((result) => {
      console.log(result);
      ulExperiences.insertAdjacentHTML("beforeend", result.innerHTML);
    });
  };

  const findCategory = () => {
    const categories = document.querySelectorAll(".tab-category");
    const results = Array.from(document.querySelectorAll('.results-card'));
    categories.forEach((category) => {
      category.addEventListener("click", event => {
      const selectedCategory = category.innerText;
      displayByCategory(selectedCategory, results);
      });
    });
  };

export { findCategory };

