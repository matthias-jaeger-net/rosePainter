void renderRoses() {
 for (int i = 0; i < EXPOSED_FRAMES; i++) 
    for (Rose rose : roses) 
      rose.render();
}
