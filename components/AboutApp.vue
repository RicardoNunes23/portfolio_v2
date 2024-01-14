<template>
  <div id="sobreSection">
    <v-container fluid class="custom-container">
      <v-row>
        <v-col cols="12" sm="12" md="6" lg="8">
          <h1>
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
          <SkillsApp />
          <h1>
            {{ text.ftitle }}
          </h1>
        </v-col>
        <v-col cols="4" md="6" lg="4" class="d-none d-md-flex">
          <a class="blob" style="margin-top: 6%" href="https://www.linkedin.com/in/ricardo-nunes-devzero/" target="_blank"></a>
        </v-col>
      </v-row>
    </v-container>
  </div>
</template>

<script>
import SkillsApp from './SkillsApp.vue'
export default {
  comments: {
    SkillsApp,
  },

  data: () => ({
    text: {
      title: '< Sobre mim >',
      description: `<p style="line-height: 1.5; text-align: justify;">
        Desenvolvedor fullstack formado em Análise e Desenvolvimento de Sistemas em 2022,
        minha trajetória profissional teve início na Hex360, onde atuei na concepção e manutenção de ferramentas 
        fundamentais para o projeto de Cidades Inteligentes. Nessa experiência, mergulhei no universo da tecnologia 
        aplicada para impulsionar o crescimento econômico e otimizar a gestão municipal.
        Ao longo dessa jornada, desenvolvi habilidades técnicas, tanto no front-end quanto no back-end.
        Estou ansioso para aplicar minha experiência e os conhecimentos adquiridos até agora em novos desafios, 
        ao mesmo tempo que reconheço a importância contínua de aprender e aprimorar minhas habilidades.`,
      subdescription: 'Tecnológias utilizadas no projeto Cidades Inteligêntes:',
      skills:
        ' [ HTML, CSS, JavaScript, Vue, Nuxt, Django, Python, DRF, Docker, Leaflet e GIT ]',
      textFormacao: 'Experiências:',
      formacao: 'Analista de Desenvolvimento Hex 360 | 06/2022 - 12/2023',
      ftitle: '</ Sobre mim >',
    },
  }),
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
  margin-top: 20px;
  margin-bottom: 30px;
}

h2 {
  margin-bottom: 150px;
  font-size: 18px;
  margin-left: 75px;
}

h3 {
  font-size: 20px;
  margin-top: -135px;
  margin-bottom: 150px;
  margin-left: 75px;
  color: #e65100;
}

h4 {
  font-size: 18px;
  margin-top: -135px;
  margin-bottom: 150px;
  margin-left: 75px;
}

h5 {
  font-size: 20px;
  margin-top: -135px;

  margin-left: 75px;
  color: #e65100;
}

.blob {
  border-radius: 40% 60% 60% 40% / 70% 30% 70% 30%;
  width: 60vmin;
  height: 60vmin;
  background: #f09;
  background-image: linear-gradient(45deg, #3023ae 0%, #f09 100%);
  background: url('../assets/img/fotoRicardoL.jpeg') center/cover;
  animation: morph 5s linear infinite alternate;
}

.bar {
  position: absolute;
  height: 100%;
  width: 5px; /* Largura da barra vertical */
  background-color: red; /* Cor da barra vertical */
  left: -10px; /* Distância da barra em relação ao texto, ajuste conforme necessário */
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
    height: 50%;
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
    margin-right: 5px;
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
