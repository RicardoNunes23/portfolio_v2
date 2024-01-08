<template>
  <v-app :theme="theme">
    <v-navigation-drawer
      temporary
      v-model="isDrawerOpen"
      style="background-color: #5C6BC0"
    >
      <v-container fluid>
        <a href="/"><img src="../assets/img/logo.png" alt="" class="logo" /></a>
        <Navigation @closeDrawer="closeDrawer" />
      </v-container>
    </v-navigation-drawer>
    <v-app-bar flat class="border-b" style="background-color: #5C6BC0">
      <v-app-bar-title
        ><img src="../assets/img/logo.png" alt="" class="logo"
      /></v-app-bar-title>

      <v-btn
        density="comfortable"
        @click="toggleTheme"
        :ripple="false"
        variant="plain"
        color="yellow"
      >
        <v-icon size="25px">mdi-theme-light-dark</v-icon>
      </v-btn>

      <div class="d-none d-md-flex">
        <v-row>
          <v-col>
            <Navigation class="horizontal-menu" />
          </v-col>
        </v-row>
      </div>

      <div class="d-md-none">
        <v-app-bar-nav-icon @click="toggleDrawer"></v-app-bar-nav-icon>
      </div>
    </v-app-bar>

    <slot></slot>

    <v-footer class="bg-indigo-lighten-1 text-center d-flex flex-column">
      <h1>Ricardo Nunes</h1>
    </v-footer>
  </v-app>
</template>

<script>
import vuetify from "~/plugins/vuetify";

export default {
  name: "Default",

  data: () => ({
    isDrawerOpen: false,
    theme: vuetify.theme,
  }),

  methods: {
    closeDrawer() {
      this.isDrawerOpen = false;
    },

    toggleDrawer() {
      this.isDrawerOpen = !this.isDrawerOpen;
    },

    toggleTheme() {
      this.theme = this.theme === "myCustomLightTheme" ? "dark" : "myCustomLightTheme";
    },
  },
};
</script>

<style scoped>
.horizontal-menu {
  display: flex;
 
}

.logo {
  height: 50px;
  margin-top: 10px;
  padding: 0 !important;
}

@media screen and (max-width: 750px) {
}
.logo {
  padding-inline: 15px;
  text-decoration: none;
  margin-left: 10px;
}


</style>
