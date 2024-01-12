<template>
    <div id="habilidadesSection">
      <v-container fluid>
        <h1>
          <span class="bar"></span>
          {{ text.title }}
        </h1>
  
        <v-row justify="center" align="center" class="mt-15">
          <v-col cols="12" sm="12" md="12" lg="12" class="btn-icon">
            <v-tooltip v-for="(icon, index) in icons" :key="index" bottom>
              <template v-slot:activator="{ on, attrs }">
                <v-icon
                  v-bind="attrs"
                  v-on="on"
                  :class="'icon'"
                  :style="{ color: icon.color }"
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
        title: 'Habilidades',
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
  
  h1 {
    position: relative;
    margin-left: 32px;
    color: blue;
    margin-top: 20px;
    margin-bottom: 50px;
  }
  
  .v-icon {
    font-size: 100px; /* Adjust the font size to change the button size */
    cursor: default;
    margin-left: 10px;
  }
  
  .bar {
    position: absolute;
    height: 100%;
    width: 5px; /* Largura da barra vertical */
    background-color: red; /* Cor da barra vertical */
    left: -10px; /* Distância da barra em relação ao texto, ajuste conforme necessário */
  }
  
  /* Aplica margem esquerda de -100px apenas em telas lg */
  @media screen and (max-width: 970px) {
    h1 {
      font-size: 25px;
  
      margin-left: -10px;
    }
  
    .v-icon {
      font-size: 25px; /* Adjust the font size to change the button size */
      margin-top: -50px;
    }
  }
  </style>