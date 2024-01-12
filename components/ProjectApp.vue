<template>
    <div id="projetosSection">
      <v-container fluid class="custom-container">
        <h1>
          <span class="bar"></span>
          {{ text.title }}
        </h1>
  
        <v-slide-group v-model="model">
          <v-slide-group v-for="(item, index) in items" :key="index">
            <v-scale-transition>
              <v-card
                color="grey-lighten-1"
                :class="['mr-4']"
                class="card-project"
              
              >
                <img :src="item.src" alt="" cover class="custom-img" />
                <v-card-title class="title">
                  {{ item.title }}
                </v-card-title>
                <v-card-subtitle class="subtitle"> {{ item.subtitle }} </v-card-subtitle>
                <v-divider></v-divider>
                <v-card-text>
                  {{ item.text }}
                </v-card-text>
                <v-footer
                  class="card-footer"
                  style="
                    position: absolute;
                    bottom: 0;
                    width: 100%;
                    background-color: #ccc;
                  "
                >
                  <v-row class="text-center">
                    <v-col cols="12">
                      <v-btn
                        prepend-icon="mdi-github"
                        stacked
                        variant="plain"
                        :ripple="false"
                        class="btn"
                        style="color: #000000"
                        @click="openLink(item.githubRepo)"
                      >
                        GitHub
                      </v-btn>
                      <v-btn
                        prepend-icon="mdi-play-circle"
                        stacked
                        variant="plain"
                        :ripple="false"
                        class="btn"
                        style="color: #ff5555"
                        @click="openLink(item.externalLink)"
                      >
                        Ver mais
                      </v-btn>
                    </v-col>
                  </v-row>
                </v-footer>
              </v-card>
            </v-scale-transition>
          </v-slide-group>
        </v-slide-group>
      </v-container>
    </div>
  </template>
  
  <script>
  import emDesenvolvimentoImage from '@/assets/img/emDesenvolvimento.gif'
  export default {
    data: () => ({
      text: {
        title: 'Projetos',
      },
      model: null,
      items: [
        {
          src: emDesenvolvimentoImage,
          title: 'Projeto 1',
          subtitle: 'Em desenvolvimento',
          text: "I'm a thing. But, like most politicians, he promised more than he could deliver. You won't have time for sleeping, soldier, not with all the bed making you'll be doing. Then we'll go with that data file! Hey, you add a one and two zeros to that or we walk! You're going to do his laundry? I've got to find a way to escape.",
          githubRepo: 'https://github.com/RicardoNunes23/portfolio_v2',
          externalLink: 'https://www.google.com',
        },
        {
          src: emDesenvolvimentoImage,
          title: 'Projeto 2',
          subtitle: 'Em desenvolvimento',
          text: "I'm a thing. But, like most politicians, he promised more than he could deliver. You won't have time for sleeping, soldier, not with all the bed making you'll be doing. Then we'll go with that data file! Hey, you add a one and two zeros to that or we walk! You're going to do his laundry? I've got to find a way to escape.",
          githubRepo:
            'https://github.com/RicardoNunes23/projeto1-sistema-financeiro',
          externalLink: 'https://www.youtube.com',
        },
        {
          src: emDesenvolvimentoImage,
          title: 'Projeto 3',
          subtitle: 'Em desenvolvimento',
          text: "I'm a thing. But, like most politicians, he promised more than he could deliver. You won't have time for sleeping, soldier, not with all the bed making you'll be doing. Then we'll go with that data file! Hey, you add a one and two zeros to that or we walk! You're going to do his laundry? I've got to find a way to escape.",
        },
        {
          src: emDesenvolvimentoImage,
          title: 'Projeto 4',
          subtitle: 'Em desenvolvimento',
          text: 'Lorem ived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
        },
        {
          src: emDesenvolvimentoImage,
          title: 'Projeto 5',
          subtitle: 'Em desenvolvimento',
          text: 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Velit rem quidem corporis excepturi veniam consequatur? Repudiandae reprehenderit, nobis id incidunt, facilis, minus eveniet ipsam sit aspernatur vero omnis accusamus! Aspernatur.',
        },
      ],
    }),
  
    methods: {
      openLink(url) {
        window.open(url, '_blank')
      },
    },
  }
  </script>
  
  <style scoped>
  .custom-container {
    /*background: url("../assets/img/backHome.jpg") center/cover;*/
    height: 92vh;
  }
  h1 {
    position: relative;
    margin-left: 50px;
    color: blue;
    margin-top: 5px;
    margin-bottom: 50px;
  }
  
  .card-project {
    width: 450px;
    height: 75vh;
  }
  
  .custom-img {
    height: 50%;
    display: flex;
    z-index: 9999;
  }
  
  .title {
    color: blue !important;
    font-weight: bold !important;
  }
  
  .subtitle {
    color: red !important;
    font-size: 15px !important;
    font-weight: bold !important;
  }
  
  .bar {
    position: absolute;
    height: 100%;
    width: 5px; /* Largura da barra vertical */
    background-color: red; /* Cor da barra vertical */
    left: -10px; /* Distância da barra em relação ao texto, ajuste conforme necessário */
  }
  
  @media screen and (max-width: 700px) {
    h1 {
      font-size: 25px;
      margin-bottom: 10px;
      margin-left: 10px;
    }
  
    .title {
      margin-top: 0;
    }
  
    .card-project {
      width: 100vw;
      height: 80vh;
    }
  
    .custom-img {
      height: 50%;
    }
  }
  </style>