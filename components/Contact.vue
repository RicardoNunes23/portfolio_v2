<template>
  <div id="contatoSection">
    <v-container fluid class="custom-container">
      <h1>
        <span class="bar"></span>
        {{ text.title }}
      </h1>
      <v-row>
        <v-col cols="12" sm="12" md="6">
        testefasdfa
        </v-col>
      </v-row>
    </v-container>
  </div>
</template>

<script>
export default {
  data: () => ({
    text: {
      title: "Contato",
    },
  }),


};
</script>

<style scoped>
.custom-container {
  /*background: url("../assets/img/backHome.jpg") center/cover;*/
  height: 85vh;
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
    margin-left: 10px;
  }
  .icons-position {
    margin-left: 0px;
  }

  .custom-container {
    /*background: url("../assets/img/backHome.jpg") center/cover;*/
       height: 80%;
 
  
  }
}
</style>
