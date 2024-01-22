<template>
  <div id="projetosSection">
    <v-container fluid>
      <v-row>
        <v-col >
          <h1 class="title_1">
            {{ text.title }}
          </h1>
          <v-slide-group v-model="model">
            <v-slide-item v-for="(item, index) in items" :key="index">
              <v-card class="card-project">
                <v-img :src="item.src" class="custom-img" cover></v-img>

                <v-card-title class="title">
                  {{ item.title }}
                </v-card-title>
                <v-card-subtitle class="subtitle">
                  {{ item.subtitle }}
                </v-card-subtitle>
                <v-divider></v-divider>
                <v-card-text class="text">
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
                      <v-btn class="ma-2" @click="openLink(item.githubRepo)">
                        <v-icon left> mdi-github </v-icon>GitHub
                      </v-btn>

                      <v-btn
                        class="ma-2"
                        color="primary"
                        @click="openLink(item.externalLink)"
                      >
                        Abrir
                        <v-icon right> mdi-play </v-icon>
                      </v-btn>
                    </v-col>
                  </v-row>
                </v-footer>

                <v-expand-transition>
                  <div>
                    <v-divider></v-divider>
                  </div>
                </v-expand-transition>
              </v-card>
            </v-slide-item>
          </v-slide-group>
          <h1 class="title_2">
            {{ text.ftitle }}
          </h1>
        </v-col>
        <v-col cols="12" lg="4" class="d-none d-lg-flex">
          <a
            class="blob"
            href="https://www.linkedin.com/in/ricardo-nunes-devzero/"
            target="_blank"
          ></a>
        </v-col>
      </v-row>
    </v-container>
  </div>
</template>

<script>
import emDesenvolvimentoImage from '@/assets/img/emDesenvolvimento.gif'
export default {
  data: () => ({
    text: {
      title: '< Projetos >',
      ftitle: '</ Projetos >',
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
      {
        src: emDesenvolvimentoImage,
        title: 'Projeto 6',
        subtitle: 'Em desenvolvimento',
        text: 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Velit rem quidem corporis excepturi veniam consequatur? Repudiandae reprehenderit, nobis id incidunt, facilis, minus eveniet ipsam sit aspernatur vero omnis accusamus! Aspernatur.',
      },
      {
        src: emDesenvolvimentoImage,
        title: 'Projeto 7',
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

.title_2 {
  padding-top: 2%;
}


.card-project {
  width: 400px;
  height: 70vh;
  margin-inline: 20px;
  background-color: #ccc;
}

.custom-img {
  height: 250px;
  margin: 5px;
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
.text {
  color: black !important;
}

@media screen and (max-width: 970px) {
  .title_1 {
    font-size: clamp(1.5em, 1em + 1vw, 1em);
    position: relative;
    color: blue;
    padding-block: 2%;
  }

  .title_2 {
    font-size: clamp(1.5em, 1em + 1vw, 1em);
    position: relative;
    color: blue;
    padding-top: 10%;
  }

  .card-project {
    width: 300px;
    margin-inline: 15px;
  }
  .custom-img {
    display: none;
  }

  .text {
    color: black !important;
  }
}
</style>
