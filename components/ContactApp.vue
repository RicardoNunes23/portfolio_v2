<template>
  <div id="contatosSection">
    <v-container fluid>
      <h1 class="title_1">
        {{ text.title }}
      </h1>
      <v-row class="text-center">
        <v-col>
          <v-row justify="center" align="center" class="mt-15">
            <v-col cols="12" sm="12" md="12" lg="12" class="btn-icon">
              <v-row justify="center" align="center" class="mt-15">
                <v-col cols="12" sm="12" md="12" lg="12" class="btn-icon">
                  <v-tooltip bottom>
                    <template v-slot:activator="{ on, attrs }">
                      <a
                        v-bind="attrs"
                        href="https://github.com/RicardoNunes23/"
                        target="_blank"
                        v-on="on"
                      >
                        <v-icon class="icon">mdi-github</v-icon>
                      </a>
                    </template>
                    <span>GitHub</span>
                  </v-tooltip>
                  <v-tooltip bottom>
                    <template v-slot:activator="{ on, attrs }">
                      <a
                        v-bind="attrs"
                        href="https://www.linkedin.com/in/ricardo-nunes-devzero/"
                        target="_blank"
                        v-on="on"
                      >
                        <v-icon class="icon" style="color: #3366cc"
                          >mdi-linkedin</v-icon
                        >
                      </a>
                    </template>
                    <span>Linkedin</span>
                  </v-tooltip>
                  <v-tooltip bottom>
                    <template v-slot:activator="{ on, attrs }">
                      <a
                        v-bind="attrs"
                        href="https://api.whatsapp.com/send/?phone=5561981291628"
                        target="_blank"
                        v-on="on"
                      >
                        <v-icon class="icon" style="color: #25d366">
                          mdi-whatsapp</v-icon
                        >
                      </a>
                    </template>
                    <span>Whatsapp</span>
                  </v-tooltip>
                </v-col>
              </v-row>
            </v-col>
          </v-row>
        </v-col>
      </v-row>
    </v-container>
  </div>
</template>

<script>
export default {
  data: () => ({
    text: {
      title: '{{ Contatos }}',
    },
  }),
}
</script>

<style scoped>

.v-icon {
  font-size: 50px;
  padding-inline: 50px;
}

.btn-icon {
    margin-bottom: 10%;
  }  

/* Aplica margem esquerda de -100px apenas em telas lg */
@media screen and (max-width: 970px) {

   .title_1 {
    font-size: clamp(1.5em, 1em + 1vw, 1em);
    position: relative;
    color: blue;
   
  }

  .icons-position {
    margin-left: 0px;
  }

  .v-icon {
    font-size: 50px;
    padding-inline: 6%;
  }

  .btn-icon {
    margin-bottom: 25%;
  }  
}
</style>
