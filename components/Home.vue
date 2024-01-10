<template>
  <div id="homeSection">
    <v-container fluid class="home-container">
      <v-row>
        <v-col cols="12" sm="12" md="4">
          <h1>
            {{ text.title }}
          </h1>
          <h2>
            {{ text.subtitle }}
          </h2>
          <v-row justify="center" align="center" class="mt-15">
            <v-col cols="12" sm="12" md="12" lg="12" class="btn-icon">
              <v-btn
                v-for="item in icons"
                :key="item.icon"
                :prepend-icon="item.icon"
                :ripple="false"
                stacked
                variant="plain"
                @click="openProfile(item.icon)"
                :color="getIconColor(item.icon)"
                class="btn"
              >
                {{ item.label }}
              </v-btn>
            </v-col>
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
      title: "Ricardo Nunes",
      subtitle: "Desenvolvedor Fullstack",
    },
    icons: [
      { icon: "mdi-github", color: "#000", label: "GitHub" },
      { icon: "mdi-linkedin", color: "#3366CC", label: "Linkedin" },
      { icon: "mdi-whatsapp", color: "#25d366", label: "Whatsapp" },
    ],
  }),

  methods: {
    getIconColor(icon) {
      const selectedIcon = this.icons.find((item) => item.icon === icon);
      return selectedIcon ? selectedIcon.color : "";
    },

    openProfile(icon) {
      const profileLinks = {
        "mdi-github": "https://github.com/RicardoNunes23",
        "mdi-linkedin": "https://www.linkedin.com/in/ricardo-nunes-devzero/",
        "mdi-whatsapp": "https://api.whatsapp.com/send/?phone=5561981291628",
      };
      const url = profileLinks[icon];
      if (url) {
        window.open(url, "_blank");
      }
    },
  },
};
</script>

<style scoped>
.home-container {
  margin-top: 65px;
  height: 93vh;
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
  width: 60vw;
  margin-top: 80px;
}

.btn {
  font-size: 15px;
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

  .btn {
    font-size: 12px;
  }
}
</style>
