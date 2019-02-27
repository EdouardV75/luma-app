const selectTab = () => {

  const tabUnDashboard = document.querySelector(".tab-un-dashboard");
  const tabUnDashboardHead = document.querySelector(".tabs .tab-un-dashboard-head");
  const tabDeuxCollaborateurs = document.querySelector(".tab-deux-collaborateurs hidden");
  const tabDeuxCollaborateursHead = document.querySelector(".tabs .tab-deux-collaborateurs hidden-head");

  if (tabUnDashboardHead) {
      tabUnDashboardHead.addEventListener("click", (event) => {
      event.currentTarget.classList.add("active");
      tabDeuxCollaborateursHead.classList.remove("active");
      tabUnDashboard.classList.remove("hidden");
      tabDeuxCollaborateurs.classList.add("hidden");
    });
  }

  if (tabDeuxCollaborateursHead) {
      tabDeuxCollaborateursHead.addEventListener("click", (event) => {
      event.currentTarget.classList.add("active");
      tabUnDashboardHead.classList.remove("active");
      tabDeuxCollaborateurs.classList.remove("hidden");
      tabUnDashboard.classList.add("hidden");
    });
  }
}

export { selectTab };
