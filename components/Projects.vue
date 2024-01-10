<template>
  <div id="projetosSection">
    <v-container fluid class="custom-container">
      <h1 class="title">
        <span class="bar"></span>
        {{ text.title }}
      </h1>

      <v-slide-group v-model="model">
        <v-slide-group-item
          v-for="(item, index) in items"
          :key="index"
          v-slot="{ isSelected, toggle, selectedClass }"
        >
          <v-scale-transition>
            <v-card
              color="grey-lighten-1"
              :class="['mr-4', selectedClass]"
              @click="toggle"
              class="card-project"
            >
              <v-img
                :src="item.src"
                cover
                class="custom-img"
                style="z-index: 9999"
              ></v-img>
              <v-card-title>
                {{ item.title }}
              </v-card-title>
              <v-card-subtitle> {{ item.subtitle }} </v-card-subtitle>
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
                      @click="openGitHubRepo(index)"
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
                      @click="openLink(index)"
                    >
                      Ver mais
                    </v-btn>
                  </v-col>
                </v-row>
              </v-footer>
            </v-card>
          </v-scale-transition>
        </v-slide-group-item>
      </v-slide-group>
    </v-container>
  </div>
</template>

<script>
import emDesenvolvimentoImage from "@/assets/img/emDesenvolvimento.gif";
export default {
  data: () => ({
    text: {
      title: "Projetos",
    },
    model: null,
    items: [
      {
        src: emDesenvolvimentoImage,

        title: "Projeto 1",
        subtitle: "Em desenvolvimento",
        text: "I'm a thing. But, like most politicians, he promised more than he could deliver. You won't have time for sleeping, soldier, not with all the bed making you'll be doing. Then we'll go with that data file! Hey, you add a one and two zeros to that or we walk! You're going to do his laundry? I've got to find a way to escape.",
        githubRepo: "https://github.com/RicardoNunes23/portfolio_v2",
        externalLink: "https://www.google.com",
      },
      {
        src: emDesenvolvimentoImage,
        title: "Projeto 2",
        subtitle: "Em desenvolvimento",
        text: "I'm a thing. But, like most politicians, he promised more than he could deliver. You won't have time for sleeping, soldier, not with all the bed making you'll be doing. Then we'll go with that data file! Hey, you add a one and two zeros to that or we walk! You're going to do his laundry? I've got to find a way to escape.",
        githubRepo:
          "https://github.com/RicardoNunes23/projeto1-sistema-financeiro",
        externalLink: "https://www.youtube.com",
      },
      {
        src: emDesenvolvimentoImage,
        title: "Projeto 3",
        subtitle: "Em desenvolvimento",
        text: "I'm a thing. But, like most politicians, he promised more than he could deliver. You won't have time for sleeping, soldier, not with all the bed making you'll be doing. Then we'll go with that data file! Hey, you add a one and two zeros to that or we walk! You're going to do his laundry? I've got to find a way to escape.",
      },
      {
        src: emDesenvolvimentoImage,
        title: "Projeto 4",
        subtitle: "Em desenvolvimento",
        text: "Lorem ived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      },
      {
        src: emDesenvolvimentoImage,
        title: "Projeto 5",
        subtitle: "Em desenvolvimento",
        text: "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Velit rem quidem corporis excepturi veniam consequatur? Repudiandae reprehenderit, nobis id incidunt, facilis, minus eveniet ipsam sit aspernatur vero omnis accusamus! Aspernatur.",
      },
    ],
  }),

  methods: {
    openGitHubRepo(index) {
      const project = this.items[index];
      if (project.githubRepo) {
        window.open(project.githubRepo, "_blank");
      } else {
        console.error(
          `O projeto ${project.title} não possui um repositório do GitHub definido.`
        );
      }
    },

    openLink(index) {
      const project = this.items[index];
      if (project.externalLink) {
        window.open(project.externalLink, "_blank");
      } else {
        console.error(
          `O projeto ${project.title} não possui um link definido.`
        );
      }
    },
  },
};
</script>

<style scoped>
h1 {
  position: relative;
  margin-left: 50px;
  color: blue;
  margin-top: 20px;
  margin-bottom: 50px;
}

.card-project {
  width: 450px;
  height: 75vh;
}

.custom-img {
  height: 300px;
  display: flex;
  z-index: 9999;
}

.v-card-title {
  color: blue;
  font-weight: bold;
}

.v-card-subtitle {
  color: red;
  font-size: 15px;
  font-weight: bold;
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
    width: 90vw;
    height: 80vh;
  }

  .custom-img {
    height: 160px;
  }
}
</style>
