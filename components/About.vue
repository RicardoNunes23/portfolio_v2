<template>
  <div id="sobreSection">
    <v-container fluid class="custom-container">
      <v-row>
        <v-col cols="12" sm="12" md="6" lg="8" >
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
      Com uma sólida trajetória na área financeira e administrativa, 
      sempre me dediquei a encontrar soluções que tornem os processos mais eficientes, 
      com aprendizado autodidata em linguagens de programação. Com isso, aprimorei meus 
      conhecimentos ao concluir a graduação em Análise e Desenvolvimento de Sistemas, 
      marcando assim a transição definitiva para a área de desenvolvimento.
      Na minha primeira experiência como desenvolvedor web full-stack, desempenhei 
      um papel na criação e manutenção de ferramentas para o projeto de Smart Cities, 
      que tem como objetivo aplicar tecnologias para promover o crescimento econômico e 
      mapear a infraestrutura municipal, utilizando as tecnológias: `,

      skills: " HTML, CSS, JavaScript, Vue, Nuxt, Django, Python, DRF, Docker, Leaflet e GIT",

      textFormacao: "Formado em:",
      formacao: "Análise e Desenvolvimento de Sistemas",
    },
    button: {
      name: "Contato",
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
  font-size: 25px;
  margin-top: -125px;
  margin-bottom: 150px;
  margin-left: 50px;
  color: #E65100;
  
}

h4 {
  font-size: 18px;
  margin-top: -125px;
  margin-bottom: 150px;
  margin-left: 50px;
}

h5 {
  font-size: 25px;
  margin-top: -125px;
  
  margin-left: 50px;
  color: #E65100;

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

  .title{
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
    color: blue;
    margin-top: -150px;
    margin-left: 0px;
  }

  h4 {
    font-size: 16px;
    margin-left: 0px;
  }

  h5 {
    font-size: 18px;
    color: blue;
    margin-top: -150px;
   
    margin-left: 0px;
  }

  h1 .blob {
    display: block !important;
  }
}
</style>
