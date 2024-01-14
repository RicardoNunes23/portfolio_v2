<template>
  <div id="habilidadesSection">
    <v-container fluid>
      <h2>
        {{ text.title }}
      </h2>

      <v-row justify="center" align="center" class="mt-5">
        <v-col cols="12" sm="12" md="12" lg="12" >
          <v-tooltip v-for="(icon, index) in icons" :key="index" bottom>
            <template v-slot:activator="{ on, attrs }">
              <v-icon
                v-bind="attrs"
                :class="'icon'"
                :style="{ color: icon.color }"
                v-on="on"
              >
                {{ icon.name }}
              </v-icon>
            </template>
            <span>{{ icon.tooltip }}</span>
          </v-tooltip>
        </v-col>
      </v-row>
    </v-container>
  </div>
</template>

<script>
export default {
  data: () => ({
    text: {
      title: '() => ({ Habilidades })',
      
    },
    icons: [
      { name: 'mdi-language-html5', color: '#ff5733', tooltip: 'HTML5' },
      { name: 'mdi-language-css3', color: '#3366cc', tooltip: 'CSS3' },
      {
        name: 'mdi-language-javascript',
        color: '#f0db4f',
        tooltip: 'JavaScript',
      },
      { name: 'mdi-vuejs', color: '#41b883', tooltip: 'Vue.js' },
      { name: 'mdi-nuxt', color: '#00c58e', tooltip: 'Nuxt.js' },
      { name: 'mdi-vuetify', color: '#1867c0', tooltip: 'Vuetify' },
      { name: 'mdi-language-python', color: '#306998', tooltip: 'Python' },
      { name: 'mdi-docker', color: '#2496ed', tooltip: 'Docker' },
    ],
  }),

  methods: {
    getIconColor(icon) {
      const selectedIcon = this.icons.find((item) => item.icon === icon)
      return selectedIcon ? selectedIcon.color : '' // Retorna a cor do ícone ou uma string vazia se não houver cor definida
    },
  },
}
</script>

<style scoped>
.custom-container {
  /*background: url("../assets/img/backHome.jpg") center/cover;*/
  height: 10vh;
}



h2 {
  position: relative;
  margin-left: 32px;
  color: blue;
  margin-top: 20px;
  margin-bottom: 10px;
}

.v-icon {
  font-size: 100px; /* Adjust the font size to change the button size */
  cursor: default;
  margin-left: 15px;
}



/* Aplica margem esquerda de -100px apenas em telas lg */
@media screen and (max-width: 720px) {
  h2 {
  position: relative;
  margin-left: 0px;
  color: blue;
  margin-top: 20px;
  margin-bottom: 10px;
  font-size: 22px;
}

  .v-icon {
    font-size: 25px !important; /* Adjust the font size to change the button size */
    margin-top: -50px;
  }


}
</style>
