<template>
  <div id="homeSection">
    <v-container fluid class="home-container">
          <v-row>
            <v-col cols="12" sm="12" md="4">
              <h1>
                {{ text.title.title }}
              </h1>
              <h2>
                {{ text.subtitle }}
              </h2>
              <ContactIconsHome class="mt-15"  />

            </v-col>
            <v-col cols="12" sm="12" md="8">
              <img src="../assets/img/backHome.png" alt="" class="backhome">
            </v-col>
          </v-row>
  

    </v-container>
  </div>
</template>

<script>
export default {
  data: () => ({
    text: {
      title: {
        title: "Ricardo Nunes",
      },
      subtitle: "Desenvolvedor Fullstack",
    },
  }),
};
</script>

<style scoped>
.home-container {
  margin-top: 65px;
  height: 93vh;
}

h1 {
  margin-left: 150px;
  margin-top: 300px;
  color: blue;
  
}

h2 {
  margin-left: 150px;
  color: red;
 
}

.backhome{
  height: 650px;
  width: 60vw;
  margin-top: 80px;

}



@media screen and (max-width: 970px) {
  

  h1 {
    font-size: 150%;
    margin-top: 60px;
    margin-left: 0px;
   
   
  }

  h2 {
    font-size: 100%;
    margin-left: 0px;
    margin-bottom: -60px;
 
    
   
  }

  .backhome{
  height: 250px;
  width: 320px;
  margin-top: 20px;

}
}
</style>
