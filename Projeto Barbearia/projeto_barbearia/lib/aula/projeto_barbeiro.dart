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

bool verificarHorario(DateTime horario){
  
  if(Horario.getDisponivel == true){
    return true
  }else{
    return false
}

void marcarHorario(Datetime horario){
  Horario.setHorario = horario;
  Horario.setDisponivel = false
}
  
void marcarHorario(Pessoa pessoa, DateTime horario){
  var verificado = verificarHorario(horario);
  if(verificado == true){
    marcarHorario(horario);
  }
}

