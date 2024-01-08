<template>
  <ul class="navigation-list">
    <li
      v-for="(item, index) in navigationItems"
      :key="index"
      class="navigation-item"
    >
      <v-btn
        @click="
          scrollToSection(item.label);
          closeDrawer();
        "
        variant="plain"
        :ripple="false"
      >
        {{ item.label }}
      </v-btn>
    </li>
  </ul>
</template>

<script>
export default {
  name: "Navigation",

  data: () => ({
    navigationItems: [
      { label: "Home" },
      { label: "Sobre" },
      { label: "Habilidades" },
      { label: "Projetos" },
      { label: "Contato" },
    ],
  }),
  methods: {
    scrollToSection(sectionLabel) {
      const element = document.getElementById(
        `${sectionLabel.toLowerCase()}Section`
      );
      if (element) {
        const offset = 65; // Ajuste o valor da margem superior conforme necessário
        window.scrollTo({
          top: element.offsetTop - offset,
          behavior: "smooth",
        });
      }
    },
    closeDrawer() {
      this.$emit("closeDrawer");
    },
  },
};
</script>

<style scoped>
.v-btn{
  font-size: 18px;
  color: #fff;
}
.navigation-list {
  list-style: none;
  padding: 0;
  
}

.navigation-item {
  flex: 1;
  margin-right: 10px;

}

.v-btn:hover{
  font-size: 20px;
  font-weight: bold;
  color: #fff;

}
</style>
