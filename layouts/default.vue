<template>
  <v-app>
    <v-app-bar fixed class="header">
      <img src="../assets/img/logo.png" alt="" class="logo" />
      <nav class="nav">
        <button class="hamburger" @click="toggleNav"></button>
        <v-switch
          v-model="$vuetify.theme.dark"
          class="modedark"
          color="black"
          inset
        ></v-switch>
        <ul class="nav-list">
          <li v-for="(item, index) in navigationItems" :key="index">
            <a
              variant="plain"
              :ripple="false"
              class="navigation-item"
              @click="scrollToSection(item.label)"
            >
              {{ item.label }}
            </a>
          </li>
        </ul>
      </nav>
    </v-app-bar>
    <Nuxt />
    <v-footer
      class="bg-indigo-lighten-1 text-center d-flex flex-column"
      style="padding-block: 50px"
    >
      <a href="/"
        ><img src="../assets/img/logo.png" alt="" class="logoRoda"
      /></a>
      <h2>{{ text.subtitle }}</h2>
      <v-icon>mdi-map-marker-radius</v-icon>
      <h3>
        {{ text.address }}
      </h3>
    </v-footer>
  </v-app>
</template>

<script>
export default {
  name: 'DefaultLayout',

  data: () => ({
    navigationItems: [
      { label: 'Home' },
      { label: 'Sobre' },
      { label: 'Projetos' },
      { label: 'Contato' },
    ],
    text: {
      address: 'Brasília- DF',
      title: 'DevZero',
      subtitle: 'Ricardo Nunes',
    },
    isDrawerOpen: false,
  }),

  methods: {
    toggleNav() {
      const nav = document.querySelector('.nav')
      nav.classList.toggle('active')
    },

    scrollToSection(sectionLabel) {
      const nav = document.querySelector('.nav')
      nav.classList.toggle('active')
      const element = document.getElementById(
        `${sectionLabel.toLowerCase()}Section`
      )
      if (element) {
        const offset = 65
        window.scrollTo({
          top: element.offsetTop - offset,
          behavior: 'smooth',
        })
      }
    },
  },
}
</script>

<style scoped>
* {
  margin: 0;
  padding: 0;
}
.header {
  background-color: #5c6bc0 !important;
}

.navigation-item {
  color: primary;
}
.logo {
  justify-content: start;
  align-items: center;
  display: flex;
  height: 100%;
}
.btn {
  margin-top: 10px;
}
.logoRoda {
  height: 50px;
  margin-top: 12px;
}

.nav {
  width: 100%;
  height: 70px;
  display: flex;
  justify-content: end;
  align-items: center;
}

.nav-list {
  display: flex;
  gap: 32px;
  list-style: none;
}

.nav-list a {
  font-size: 18px;
  color: #fff;
  padding-block: 16px;
}

.hamburger {
  display: none;
  border: none;
  background: none;
  border-top: 3px solid #fff;
  cursor: pointer;
}

.hamburger::after,
.hamburger::before {
  content: ' ';
  display: block;
  width: 30px;
  height: 3px;
  background: #fff;
  margin-top: 5px;
  position: relative;
  transition: 0.3s;
}

.modedark {
  margin-top: 23px;
}

@media (max-width: 750px) {
  .hamburger {
    display: block;
    z-index: 1;
  }

  .nav-list {
    position: fixed;
    top: 0;
    left: 0;
    width: 100vw;
    height: 100vh;
    background: #a5c;
    clip-path: circle(100px at 100% -15%);

    transition: 1s ease-out;

    flex-direction: column;
    justify-content: space-around;
    align-items: center;
    gap: 0;

    pointer-events: none;
  }

  .nav-list a {
    font-size: 24px;
    opacity: 0;
  }

  .nav-list li:nth-child(1) a {
    transition: 0.5s 0.2s;
  }

  .nav-list li:nth-child(2) a {
    transition: 0.5s 0.4s;
  }

  .nav-list li:nth-child(3) a {
    transition: 0.5s 0.6s;
  }

  /* Estilos ativos */

  .nav.active .nav-list {
    clip-path: circle(1500px at 90% -15%);
    pointer-events: all;
  }

  .nav.active .nav-list a {
    opacity: 1;
  }

  .nav.active .hamburger {
    position: fixed;
    top: 26px;
    right: 16px;
    border-top-color: transparent;
  }

  .nav.active .hamburger::before {
    transform: rotate(135deg);
  }

  .nav.active .hamburger::after {
    transform: rotate(-135deg);
    top: -7px;
  }
}
</style>