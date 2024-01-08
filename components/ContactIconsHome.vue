<template>
  <div>
    <v-item-group>
      <v-row justify="center">
        <v-col
         
          v-for="(item, index) in icons"
          :key="index"
          class="custom-col"
        >
          <v-list-item three-line class="text-center">
            <v-list-item-content>
              <div class="d-none d-md-block">
                <v-icon
                  @click="openProfile(item.icon)"
                  variant="plain"
                  :ripple="false"
                  size="35"
                  :color="getIconColor(item.icon)"
                  >{{ item.icon }}</v-icon
                >

                <div class="icon-label">{{ item.label }}</div>
              </div>
              <div class="d-md-none d-sm-block">
                <v-icon size="30" :color="getIconColor(item.icon)">{{
                  item.icon
                }}</v-icon>
              </div>
              <div class="d-md-none d-sm-block">
                <h6>{{ item.label }}</h6>
              </div>
            </v-list-item-content>
          </v-list-item>
        </v-col>
      </v-row>
    </v-item-group>
  </div>
</template>

<script>
export default {
  data: () => ({
    text: {
      title: "Habilidades",
    },

    icons: [
      { icon: "mdi-github", color: "#000", label: "GitHub" }, // Defina a cor desejada para cada ícone
      { icon: "mdi-linkedin", color: "#3366CC", label: "Linkedin" },
      { icon: "mdi-whatsapp", color: "#25d366", label: "Whatsapp" },
    ],
  }),

  methods: {
    getIconColor(icon) {
      const selectedIcon = this.icons.find((item) => item.icon === icon);
      return selectedIcon ? selectedIcon.color : ""; // Retorna a cor do ícone ou uma string vazia se não houver cor definida
    },

    openProfile(icon) {
      const profileLinks = {
        "mdi-github": "https://github.com/RicardoNunes23",
        "mdi-linkedin": "https://www.linkedin.com/in/ricardo-nunes-devzero/",
        "mdi-whatsapp": "https://api.whatsapp.com/send/?phone=5561981291628",
      };
      const url = profileLinks[icon];
      if (url) {
        window.open(url, "_blank"); // Abre a URL em uma nova guia
      }
    },
  },
};
</script>

<style scoped>
.custom-card {
  background-color: transparent;
}


</style>
