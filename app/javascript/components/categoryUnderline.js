const selectCategoryTab = () => {

  const allTabs = document.querySelectorAll(".accent-bottom-line");

  allTabs.forEach((tab) => {
    tab.addEventListener("click", (event) => {
      // const tabActive = document.querySelector(".accent-bottom-line");
      // tabActive.classList.remove(".selectedTab");
      currentTarget.classList.add(".selectedTab");
    });
  });
};

export { selectCategoryTab };

