<template>
  <v-app>
    <v-app-bar fixed class="header" flat>
      <div class="app-bar-content">
        <div class="start-text">&lt;Ricardo Nunes/&gt;</div>
        <nav class="nav">
          <v-switch
            v-model="$vuetify.theme.dark"
            class="modedark"
            color="black"
            inset
          ></v-switch>

          <button class="hamburger" @click="toggleNav"></button>
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
      </div>
    </v-app-bar>
    <Nuxt />
    <v-footer
      class="text-center d-flex flex-column"
      style="padding-block: 50px; background-color: #5c6bc0"
    >
    <h2 style="color: #fff">{{ text.subtitle }}</h2>
    <h2 style="color: #fff">{{ text.fone }}</h2>
    <br>
      <h3 style="color: #fff;">
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
      { label: 'Contatos' },
    ],
    text: {
      address: '( Brasília- DF )',
      fone: '[ 61 98129-1628 ]',
      subtitle: '< Ricardo Nunes >',
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
  height: 70px !important;
}

.app-bar-content {
    display: flex;
    align-items: center;
    justify-content: space-between;
    width: 90%;
  }

.start-text {
    /* Adicione estilos conforme necessário */
    margin-right: 16px; /* Ajuste a margem conforme necessário */
    margin-left: 25px;
    color: #fff;
    font-weight: bolder;
    font-size: 25px;
    margin-top: 5px;
  }

.nav {
  width: 95%;
  height: 70px;
  display: flex;
  justify-content: flex-end;
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

.nav-list a:hover {
  font-size: 18px;
  color: #f7cb09;
  font-weight: bolder;
  justify-content: center;
  transition: opacity .2s linear;
 
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
  margin-left: 65vw;
}

@media (max-width: 768px) {
  .hamburger {
    display: block;
    z-index: 1;
  }

  span {
    color: blue;
    width: 1500px;
  }

  .app-bar-content {
    display: flex;
    align-items: center;
    justify-content: space-between;
    width: 80%;
  }

.start-text {
    /* Adicione estilos conforme necessário */
    margin-right: 16px; /* Ajuste a margem conforme necessário */
    margin-left: 0px;
    color: #fff;
    font-weight: bolder;
    font-size: 15px;
  }

  .nav-list {
    position: fixed;
    top: 0;
    left: 0;
    width: 100vw;
    height: 100vh;
    background: #5c6bc0;
    clip-path: circle(100px at 100% -15%);

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

  .modedark {
    margin-top: 23px;
    margin-left: 45vw;
  }
}
</style>
