<template>
  <div>
    <HomeApp ref="homeSection" />
    <AboutApp ref="aboutSection" />
    <ProjectApp ref="projectSection" />
    <ContactApp ref="contactSection" />
  </div>
</template>

<script>
import AboutApp from '~/components/AboutApp.vue';
import ContactApp from '~/components/ContactApp.vue';
import HomeApp from '~/components/HomeApp.vue';
import ProjectApp from '~/components/ProjectApp.vue';

export default {
    name: 'IndexPage',
    components: { HomeApp, AboutApp, ContactApp, ProjectApp }
}
</script>