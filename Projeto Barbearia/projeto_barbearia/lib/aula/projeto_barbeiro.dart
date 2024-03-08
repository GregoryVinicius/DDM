void main() {}

bool verificarIdade(int idade, bool temResponsavel) {
  if (idade >= 18) {
    return true;
  } else if (idade < 18 && temResponsavel == true) {
    return true;
  } else {
    return false;
  }
}

