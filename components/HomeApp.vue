<template>
  <div id="homeSection" class="hero">
    <v-container fluid class="home-container">
      <v-row>
        <v-col cols="12" sm="12" md="4">
          <h1>{{ text.title }}</h1>
          <h2>{{ text.subtitle }}</h2>
          <v-row justify="center" align="center" class="mt-15">
            <v-col cols="12" sm="12" md="12" lg="12" class="btn-icon">
              <a href="https://github.com/RicardoNunes23/" target="_blank">
                <v-icon class="icon">mdi-github</v-icon>
              </a>
              <a
                href="https://www.linkedin.com/in/ricardo-nunes-devzero/"
                target="_blank"
              >
                <v-icon class="icon" style="color: #3366cc"
                  >mdi-linkedin</v-icon
                >
              </a>
              <a
                href="https://api.whatsapp.com/send/?phone=5561981291628"
                target="_blank"
              >
                <v-icon class="icon" style="color: #25d366"
                  >mdi-whatsapp</v-icon
                >
              </a>
            </v-col>
            <div class="text-center">
              <v-btn color="primary" @click="dialog = true" outlined
                >currículo</v-btn
              >
              <v-dialog v-model="dialog" width="auto" z-index="1">
                <v-card>
                  <v-card>
                    <img
                      src="../assets/img/CV_Ricardo_v2.jpg"
                      alt=""
                      width="900px"
                    />
                  </v-card>
                  <v-card-actions>
                    <v-btn
                      color="error"
                      block
                      @click="dialog = false"
                      style="width: 100%"
                      >Fechar</v-btn
                    >
                  </v-card-actions>
                </v-card>
              </v-dialog>
            </div>
          </v-row>
        </v-col>
        <v-col cols="12" sm="12" md="8">
          <img src="../assets/img/backHome.png" alt="" class="backhome" />
        </v-col>
      </v-row>
    </v-container>
  </div>
</template>

<script>
export default {
  data: () => ({
    text: {
      title: 'Ricardo Nunes',
      subtitle: 'Desenvolvedor Fullstack',
    },
    dialog: false,
  }),
}
</script>


<style lang="scss" scoped>
.hero {
  margin-top: calc(100vh - 90vh);
  height: 92vh;
}

h1 {
  margin-left: 100px;
  margin-top: 300px;
  color: blue;
}

h2 {
  margin-left: 150px;
  color: red;
}

.backhome {
  height: 650px;
  width: 56vw;
  margin-top: 80px;
}

.icon {
  font-size: 5vh;
  margin-inline: 1vw;
}

.btn-icon {
  text-align: center;
  margin-top: 5%;
}

@media screen and (max-width: 970px) {
  h1 {
    font-size: 150%;
    margin-top: 60px;
    margin-left: 0px;
  }

  h2 {
    font-size: 100%;
    margin-left: 50px;
    margin-bottom: -60px;
  }

  .backhome {
    height: 250px;
    width: 320px;
    margin-top: 10px;
  }
}
</style>
