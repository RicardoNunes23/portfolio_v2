<template>
  <div id="sobreSection">
    <v-container fluid class="custom-container">
      <v-row>
        <v-col cols="12" sm="12" md="6" lg="8">
          <h1 class="title">
            <span class="bar"></span>
            {{ text.title }}
          </h1>
          <div class="d-flex align-center justify-center">
            <div class="blob d-md-none"></div>
          </div>
          <h2>
            <div v-html="text.description"></div>
          </h2>
          <h4>{{ text.subdescription }}</h4>
          <h3>{{ text.skills }}</h3>
          <h4>{{ text.textFormacao }}</h4>
          <h5>{{ text.formacao }}</h5>
          <Skills />
        </v-col>
        <v-col cols="4" md="6" lg="4" class="d-none d-md-flex">
          <div class="blob" style="margin-top: 20%"></div>
        </v-col>
      </v-row>
    </v-container>
  </div>
</template>

<script>
export default {
  data: () => ({
    text: {
      title: "Sobre mim",
      description: `<p style="line-height: 1.5; text-align: justify;">
      Desenvolvedor fullstack formado em Análise e Desenvolvimento de Sistemas em 2022,
      minha trajetória profissional teve início na Hex360, onde atuei na concepção e manutenção de ferramentas 
      fundamentais para o projeto de Cidades Inteligentes. Nessa experiência, mergulhei no universo da tecnologia 
      aplicada para impulsionar o crescimento econômico e otimizar a gestão municipal.
      Ao longo dessa jornada, desenvolvi habilidades técnicas, tanto no front-end quanto no back-end.
      Estou ansioso para aplicar minha experiência e os conhecimentos adquiridos até agora em novos desafios, 
      ao mesmo tempo que reconheço a importância contínua de aprender e aprimorar minhas habilidades.`,
      subdescription: "Tecnológias utilizadas no projeto Cidades Inteligêntes:",
      skills:
        " HTML, CSS, JavaScript, Vue, Nuxt, Django, Python, DRF, Docker, Leaflet e GIT",
      textFormacao: "Experiências:",
      formacao: "Analista de Desenvolvimento Hex 360 | 06/2022 - 12/2023",
    },
  }),
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

h2 {
  margin-bottom: 150px;
  font-size: 18px;
  margin-left: 50px;
}

h3 {
  font-size: 20px;
  margin-top: -135px;
  margin-bottom: 150px;
  margin-left: 50px;
  color: #e65100;
}

h4 {
  font-size: 18px;
  margin-top: -135px;
  margin-bottom: 150px;
  margin-left: 50px;
}

h5 {
  font-size: 20px;
  margin-top: -135px;

  margin-left: 50px;
  color: #e65100;
}

.blob {
  border-radius: 40% 60% 60% 40% / 70% 30% 70% 30%;
  width: 60vmin;
  height: 60vmin;
  background: #f09;
  background-image: linear-gradient(45deg, #3023ae 0%, #f09 100%);
  background: url("../assets/img/fotoRicardoL.jpeg") center/cover;
  animation: morph 5s linear infinite alternate;
}

@keyframes morph {
  0% {
    border-radius: 40% 60% 60% 40% / 70% 30% 70% 30%;
  }
  100% {
    border-radius: 40% 80%;
  }
}

@media screen and (max-width: 970px) {
  .custom-container {
    /*background: url("../assets/img/backHome.jpg") center/cover;*/
    height: 10%;
  }

  .title {
    margin-top: 0;
  }
  h1 {
    font-size: 25px;
    margin-bottom: 10px;
    margin-left: 10px;
  }

  h2 {
    font-size: 16px;
    margin-top: 30px;
    margin-left: 0px;
  }

  h3 {
    font-size: 18px;
    color: #e65100;
    margin-top: -150px;
    margin-left: 0px;
  }

  h4 {
    font-size: 16px;
    margin-left: 0px;
  }

  h5 {
    font-size: 18px;
    color: #e65100;
    margin-top: -150px;

    margin-left: 0px;
  }

  h1 .blob {
    display: block !important;
  }
}
</style>
