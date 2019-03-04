const selectTab = () => {

  const tabUnDashboardHead = document.querySelector(".tabs .tab-un-dashboard-head");
  const tabUnDashboard = document.querySelector(".tab-un-dashboard");
  const tabDeuxCollaborateursHead = document.querySelector(".tabs .tab-deux-collaborateurs-head");
  const tabDeuxCollaborateurs = document.querySelector(".tab-deux-collaborateurs");
  const tabTroisCollaborateursHead = document.querySelector(".tabs .tab-trois-invite-head");
  const tabTroisCollaborateurs = document.querySelector(".tab-trois-invite");

  // console.log(tabUnDashboardHead);
  // console.log(tabUnDashboard);

  // console.log(tabDeuxCollaborateursHead);
  // console.log(tabDeuxCollaborateurs);

  if (tabUnDashboardHead) {
    tabUnDashboardHead.addEventListener("click", (event) => {
      console.log("Tab 1");
      event.currentTarget.classList.add("active");
      tabUnDashboard.classList.remove("hidden");

      // 2
      tabDeuxCollaborateursHead.classList.remove("active");
      tabDeuxCollaborateurs.classList.add("hidden");

      // 3
      tabTroisCollaborateursHead.classList.remove("active");
      tabTroisCollaborateurs.classList.add("hidden");
    });
  }

  if (tabDeuxCollaborateursHead) {
    tabDeuxCollaborateursHead.addEventListener("click", (event) => {
      console.log("Tab 2");
      event.currentTarget.classList.add("active");
      tabDeuxCollaborateurs.classList.remove("hidden");

      // 1
      tabUnDashboardHead.classList.remove("active");
      tabUnDashboard.classList.add("hidden");

      // 3
      tabTroisCollaborateursHead.classList.remove("active");
      tabTroisCollaborateurs.classList.add("hidden");
    });
  }

  if (tabTroisCollaborateursHead) {
    tabTroisCollaborateursHead.addEventListener("click", (event) => {
      console.log("Tab 3");
      event.currentTarget.classList.add("active");
      tabTroisCollaborateurs.classList.remove("hidden");

      // 1
      tabUnDashboardHead.classList.remove("active");
      tabUnDashboard.classList.add("hidden");

      // 2
      tabDeuxCollaborateursHead.classList.remove("active");
      tabDeuxCollaborateurs.classList.add("hidden");
    });
  }
}

export { selectTab };
