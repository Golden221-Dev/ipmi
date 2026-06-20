boolean mouseAdentro() {
  if (mouseX > GrX1 && mouseX < GrX2 && mouseY > GrY1 && mouseY < GrY2) {
    return true;
  } else {
    return false;
  }
}
