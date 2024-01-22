<template>
  <div id="habilidadesSection">
    <v-container fluid>
      <h2>
        {{ text.title }}
      </h2>

      <v-row justify="center" align="center" class="mt-5">
        <v-col cols="12">
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
      { name: 'mdi-react', color:'#61DAFB', tooltip:'React'}, 
      { name: 'mdi-vuejs', color: '#41b883', tooltip: 'Vue.js' },
      { name: 'mdi-nuxt', color: '#00c58e', tooltip: 'Nuxt.js' },
      { name: 'mdi-vuetify', color: '#1867c0', tooltip: 'Vuetify' },
      { name: 'mdi-nodejs', color:'#8CC84B', tooltip:'NodeJS'},
      { name: 'mdi-language-python', color: '#306998', tooltip: 'Python' },
      { name: 'mdi-docker', color: '#2496ed', tooltip: 'Docker' },
      { name: 'mdi-postgresql', color:'#61DAFB', tooltip:'React'}, 


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
h2 {
  position: relative;
  margin-left: 5%;
  color: blue;
}

.v-icon {
  font-size: clamp(4em, 4em + 1vw, 2em);
  cursor: default;
  margin-left: 5%;
}

/* Aplica margem esquerda de -100px apenas em telas lg */
@media screen and (max-width: 720px) {
  h2 {
    position: relative;
    margin-left: -5%;
  }

  .v-icon {
    font-size: clamp(2em, 1em + 1vw, 2em);
  }
}
</style>
