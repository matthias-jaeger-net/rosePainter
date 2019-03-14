void renderRoses() {
 for (int i = 0; i < EXPOSED_FRAME; i++) 
    for (Rose rose : roses) 
      rose.render();
}
