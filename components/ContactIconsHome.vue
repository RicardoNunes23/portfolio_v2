<template>
  <div>
    <v-container>
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
    </v-container>
  </div>
</template>

<script>
export default {
  data() {
    return {
      text: {
        title: "Habilidades",
      },
      icons: [
        { icon: "mdi-github", color: "#000", label: "GitHub" },
        { icon: "mdi-linkedin", color: "#3366CC", label: "Linkedin" },
        { icon: "mdi-whatsapp", color: "#25d366", label: "Whatsapp" },
      ],
    };
  },

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
        window.open(url, "_blank"); // Abre a URL em uma nova guia
      }
    },
  },
};
</script>

<style scoped>
.btn {
  font-size: 15px; 
  padding: 50px;
}

@media screen and (max-width: 780px) {
  .btn {
    font-size: 12px;
    padding: 0;
  }
}
</style>
