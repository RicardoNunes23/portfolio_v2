<template>
  <div id="habilidadesSection">
    <v-container fluid class="custom-container">
      <h1 >
        <span class="bar"></span>
        {{ text.title }}
      </h1>
      <v-row>
        <v-col v-for="(item, index) in icons" :key="index">
          <div class="icons-position">
            <v-icon size="60" :color="getIconColor(item.icon)">{{
              item.icon
            }}</v-icon>
            <div class="icon-label">{{ item.label }}</div>
          </div>
        </v-col>
      </v-row>
    </v-container>
  </div>
</template>

<script>
export default {
  data: () => ({
    text: {
      title: "Habilidades",
    },

    icons: [
      { icon: "mdi-language-html5", color: "#FF5733", label: "HTML5" },
      { icon: "mdi-language-css3", color: "#3366CC", label: "CSS3" },
      {
        icon: "mdi-language-javascript",
        color: "#F0DB4F",
        label: "JavaScript",
      },
      { icon: "mdi-vuejs", color: "#41B883", label: "Vue.js" },
      { icon: "mdi-nuxt", color: "#00C58E", label: "Nuxt.js" },
      { icon: "mdi-vuetify", color: "#1867C0", label: "Vuetify" },
      { icon: "mdi-language-python", color: "#306998", label: "Python" },
      { icon: "mdi-docker", color: "#2496ED", label: "Docker" },
    ],
  }),

  methods: {
    getIconColor(icon) {
      const selectedIcon = this.icons.find((item) => item.icon === icon);
      return selectedIcon ? selectedIcon.color : ""; // Retorna a cor do ícone ou uma string vazia se não houver cor definida
    },
  },
};
</script>

<style scoped>
.icons-position {
  margin-left: 25px;
}

h1 {
  position: relative;
  margin-left: 32px;
  color: blue;
  margin-top: 20px;
  margin-bottom: 50px;
}


/* Aplica margem esquerda de -100px apenas em telas lg */
@media screen and (max-width: 970px) {


  h1 {
    font-size: 25px;
    margin-bottom: 10px;
    margin-left: -10px;
  }
  .icons-position {
    margin-left: 0px;
  }
}
</style>
