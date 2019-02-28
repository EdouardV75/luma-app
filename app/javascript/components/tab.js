const selectTab = () => {

  const tabUnDashboardHead = document.querySelector(".tabs .tab-un-dashboard-head");
  const tabUnDashboard = document.querySelector(".tab-un-dashboard");
  const tabDeuxCollaborateursHead = document.querySelector(".tabs .tab-deux-collaborateurs-head");
  const tabDeuxCollaborateurs = document.querySelector(".tab-deux-collaborateurs");

console.log(tabUnDashboardHead);
console.log(tabUnDashboard);

console.log(tabDeuxCollaborateursHead);
console.log(tabDeuxCollaborateurs);

  if (tabUnDashboardHead) {
    tabUnDashboardHead.addEventListener("click", (event) => {
      console.log("Tab 1");
      event.currentTarget.classList.add("active");
      tabUnDashboard.classList.remove("hidden");

      tabDeuxCollaborateursHead.classList.remove("active");
      tabDeuxCollaborateurs.classList.add("hidden");
    });
  }

  if (tabDeuxCollaborateursHead) {
    tabDeuxCollaborateursHead.addEventListener("click", (event) => {
      console.log("Tab 2");
      event.currentTarget.classList.add("active");
      tabDeuxCollaborateurs.classList.remove("hidden");

      tabUnDashboardHead.classList.remove("active");
      tabUnDashboard.classList.add("hidden");
    });
  }
}

export { selectTab };
