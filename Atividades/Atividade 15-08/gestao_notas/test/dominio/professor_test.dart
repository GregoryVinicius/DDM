import 'package:flutter_application_1/dominio/dto/dto_professor.dart';
import 'package:flutter_application_1/dominio/interface/i_dao_professor.dart';
import 'package:flutter_application_1/dominio/professor.dart';

main() {
  var dto = DTOProfessor(nome: 'João', cpf: '733.033.300-68');
  var dao = DAOProfessorFake();
  var professor = Professor(dto: dto, dao: dao);
}

class DAOProfessorFake implements IDAOProfessor {
  @override
  DTOProfessor salvar(DTOProfessor dto) => dto;
}
