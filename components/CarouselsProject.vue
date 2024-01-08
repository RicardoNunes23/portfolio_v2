<template>
  <v-carousel>
    <v-carousel-item v-for="(item, index) in items" :key="index">
      <v-card flat class="custom-card">
        <v-img :src="item.image" height="100%" cover>
        
            <div style="margin-top: 100px">
              <v-card-title >{{ item.title }}</v-card-title>
              <v-card-text>{{ item.description }}</v-card-text>
            </div>
        </v-img>
      </v-card>
    </v-carousel-item>
  </v-carousel>
</template>

<script>
export default {
  data() {
    return {
      items: [
        {
          title: "NETFLIX",
          description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",

          image:
            "https://images.ctfassets.net/4cd45et68cgf/Rx83JoRDMkYNlMC9MKzcB/2b14d5a59fc3937afd3f03191e19502d/Netflix-Symbol.png?w=70&h=46",
        },
        {
          title: "Card 2",
          description: "Description for Card 2",
          image: "https://example.com/image2.jpg",
        },
        // Add more items as needed
      ],
    };
  },
};
</script>

<style scoped>
.custom-card {
  background-color: transparent;
}
</style>
